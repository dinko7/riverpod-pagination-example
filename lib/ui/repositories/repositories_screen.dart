import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_pagination_example/domain/repository.dart';
import 'package:riverpod_pagination_example/ui/repositories/repositories_view_model.dart';
import 'package:riverpod_pagination_example/ui/repositories/repository_filter_notifier.dart';
import 'package:riverpod_pagination_example/ui/repositories/repository_item.dart';
import 'package:riverpod_pagination_example/ui/widgets/search_filter_row.dart';
import 'package:riverpod_pagination_example/ui/widgets/sliver_async_error.dart';
import 'package:riverpod_pagination_example/ui/widgets/sliver_empty_search.dart';
import 'package:riverpod_pagination_example/ui/widgets/sliver_list_tile_shimmer.dart';
import 'package:riverpod_pagination_example/ui/widgets/sliver_loading_spinner.dart';

class RepositoriesScreen extends ConsumerStatefulWidget {
  const RepositoriesScreen({super.key});

  @override
  ConsumerState createState() => _RepositoriesScreenState();
}

class _RepositoriesScreenState extends ConsumerState<RepositoriesScreen> {
  RepositoriesViewModel get viewModel =>
      ref.read(repositoriesViewModelProvider.notifier);

  RepositoryFilterNotifier get filterController =>
      ref.read(repositoryFilterNotifierProvider.notifier);

  @override
  Widget build(BuildContext context) {
    final repositoriesState = ref.watch(repositoriesViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Pagination Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: NotificationListener(
          onNotification: (ScrollNotification scrollInfo) {
            if (scrollInfo is ScrollEndNotification &&
                scrollInfo.metrics.axisDirection == AxisDirection.down &&
                scrollInfo.metrics.pixels >=
                    scrollInfo.metrics.maxScrollExtent) {
              if (viewModel.canLoadMore) {
                viewModel.loadNextPage();
              }
            }
            return true;
          },
          child: RefreshIndicator(
            onRefresh: () async {
              viewModel.refresh();
            },
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(bottom: 16),
                  sliver: SearchFilterRow(
                    onSearch: onSearch,
                    filterProvider: repositoryFilterNotifierProvider,
                    onFilterChanged: (newFilter) {
                      filterController.update(newFilter);
                      applyFilter();
                    },
                  ),
                ),
                ...repositories(context, repositoriesState),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> repositories(
      BuildContext context, AsyncValue<List<Repository>> repositoryState) {
    final repositories = repositoryState.valueOrNull ?? [];
    final initialLoading = repositoryState.isLoading && repositories.isEmpty;
    final loadingMore = repositoryState.isLoading && repositories.isNotEmpty;

    return initialLoading
        ? shimmerLoading()
        : repositories.isEmpty
            ? [const SliverEmptySearch(text: "No repositories found")]
            : [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) =>
                        RepositoryItem(repository: repositories[index]),
                    childCount: repositories.length,
                  ),
                ),
                if (loadingMore) const SliverLoadingSpinner(),
                if (repositoryState.hasError)
                  SliverErrorMessage(error: repositoryState.error!),
              ];
  }

  List<Widget> shimmerLoading() {
    return List.generate(10, (index) => const SliverListTileShimmer());
  }

  void applyFilter() {
    viewModel.applyFilter(ref.read(repositoryFilterNotifierProvider));
  }

  void onSearch(String query) {
    filterController.updateQuery(query);
    applyFilter();
  }
}
