import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_pagination_example/data/mappers/repository_mapper.dart';
import 'package:riverpod_pagination_example/data/remote/github_api.dart';
import 'package:riverpod_pagination_example/domain/repository.dart';
import 'package:riverpod_pagination_example/domain/repository_filter.dart';

final githubRepositoryProvider = Provider((ref) => GithubRepository(ref.read(githubApiProvider)));

class GithubRepository {
  final GithubApi api;

  GithubRepository(this.api);

  Future<(int totolItems, List<Repository> items)> fetchRepositories({
    String query = "",
    SortOption? sort,
    OrderOption? order,
    List<ProgrammingLanguage> languages = const [],
    int? page,
    int? perPage,
  }) async {
    final apiQuery = _buildQuery(query, languages.map((e) => e.value).toList());
    if (apiQuery.isEmpty) {
      return (0, <Repository>[]);
    }
    final response = await api.searchRepositories(
      query: apiQuery,
      sort: sort?.value,
      order: order?.value,
      page: page,
      perPage: perPage ?? 10,
    );
    return (response.totalCount, response.items.map((e) => e.toDomain()).toList());
  }

  String _buildQuery(String query, List<String> languages) {
    final languageQuery = languages.map((e) => "language:$e").join(" ");
    return query.isEmpty
        ? languageQuery.isEmpty
            ? ""
            : languageQuery
        : "$query+$languageQuery";
  }

  List<SortOption> fetchSortOptions() {
    return [const StarsSort(), const ForksSort(), const UpdatedSort()];
  }

  List<OrderOption> fetchOrderOptions() {
    return [const AscOrder(), const DescOrder()];
  }

  List<ProgrammingLanguage> fetchProgrammingLanguages() {
    return [
      const JavaLanguage(),
      const PythonLanguage(),
      const JavaScriptLanguage(),
      const CppLanguage(),
      const CSharpLanguage(),
      const RubyLanguage(),
      const GoLanguage(),
      const SwiftLanguage(),
      const PhpLanguage(),
      const TypeScriptLanguage(),
    ];
  }
}
