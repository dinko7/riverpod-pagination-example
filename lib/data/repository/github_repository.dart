import 'package:riverpod_pagination_example/data/mappers/repository_mapper.dart';
import 'package:riverpod_pagination_example/data/remote/github_api.dart';
import 'package:riverpod_pagination_example/domain/repository.dart';

class GithubRepository {
  final GithubApi api;

  GithubRepository(this.api);

  Future<(int totolItems, List<Repository> items)> getRepositories({
    String query = "",
    String? sort,
    String? order,
    List<String> languages = const [],
    int? page,
    int? perPage,
  }) async {
    final response = await api.searchRepositories(
      query: _buildQuery(query, languages),
      sort: sort,
      order: order,
      page: page,
      perPage: perPage,
    );
    return (response.totalCount, response.items.map((e) => e.toDomain()).toList());
  }

  String _buildQuery(String query, List<String> languages) {
    final languageQuery = languages.map((e) => "language:$e").join(" ");
    return "$query+$languageQuery".trim();
  }
}
