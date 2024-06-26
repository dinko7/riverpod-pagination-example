import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_pagination_example/data/repository/github_repository.dart';
import 'package:riverpod_pagination_example/domain/repository_filter.dart';

final sortOptionsProvider = Provider<List<SortOption>>((ref) => ref.watch(githubRepositoryProvider).fetchSortOptions());

final orderOptionsProvider =
    Provider<List<OrderOption>>((ref) => ref.watch(githubRepositoryProvider).fetchOrderOptions());

final programmingLanguagesProvider =
    Provider<List<ProgrammingLanguage>>((ref) => ref.watch(githubRepositoryProvider).fetchProgrammingLanguages());
