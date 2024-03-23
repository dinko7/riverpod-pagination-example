import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_pagination_example/data/repository/github_repository.dart';
import 'package:riverpod_pagination_example/domain/repository.dart';
import 'package:riverpod_pagination_example/utils/pagination_controller.dart';

final repositoriesViewModelProvider =
    AsyncNotifierProvider<RepositoriesViewModel, List<Repository>>(() => RepositoriesViewModel());

class RepositoriesViewModel extends AsyncNotifier<List<Repository>> with AsyncPaginationController<Repository, int> {
  late final repository = ref.read(githubRepositoryProvider);

  @override
  int get initialPage => 1;

  @override
  FutureOr<List<Repository>> loadPage(int page) async {
    final (totalItems, items) = await repository.fetchRepositories(page: page);
    return items;
  }

  @override
  int nextPage(int currentPage) => currentPage + 1;
}
