import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_pagination_example/data/repository/github_repository.dart';
import 'package:riverpod_pagination_example/domain/repository.dart';
import 'package:riverpod_pagination_example/domain/repository_filter.dart';
import 'package:riverpod_pagination_example/utils/filter.dart';
import 'package:riverpod_pagination_example/utils/pagination_controller.dart';

final repositoriesViewModelProvider =
    AsyncNotifierProvider<RepositoriesViewModel, List<Repository>>(() => RepositoriesViewModel());

class RepositoriesViewModel extends AsyncNotifier<List<Repository>>
    with AsyncPaginationController<Repository, int>, AsyncPaginationFilter<RepositoryFilter, Repository, int> {
  late final repository = ref.read(githubRepositoryProvider);

  var _canLoadMore = true;

  get canLoadMore => _canLoadMore;

  @override
  int get initialPage => 1;

  @override
  FutureOr<List<Repository>> loadPage(int page) async {
    final (totalItems, items) = await repository.fetchRepositories(
        query: currentFilter.query ?? "",
        languages: currentFilter.languages,
        sort: currentFilter.sort,
        order: currentFilter.order,
        page: page);
    _updateCanLoadMore(items, totalItems);
    return items;
  }

  @override
  int nextPage(int currentPage) => currentPage + 1;

  @override
  RepositoryFilter currentFilter = const RepositoryFilter();

  void _updateCanLoadMore(List<Repository> items, int totalItems) {
    _canLoadMore = (state.value?.length ?? 0 + items.length) < totalItems;
  }
}
