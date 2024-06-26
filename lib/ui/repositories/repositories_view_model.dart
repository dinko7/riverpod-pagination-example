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
  GithubRepository get repository => ref.read(githubRepositoryProvider);

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
    final previousLength = state.valueOrNull?.length ?? 0;
    _canLoadMore = previousLength + items.length < totalItems;
    return items;
  }

  @override
  int nextPage(int currentPage) => currentPage + 1;

  @override
  RepositoryFilter currentFilter = const RepositoryFilter();

  void refresh() {
    currentPage = initialPage;
    applyFilter(currentFilter);
  }
}
