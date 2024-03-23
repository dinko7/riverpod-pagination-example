import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_pagination_example/data/remote/models/paginated_response.dart';
import 'package:riverpod_pagination_example/data/remote/models/repository_get.dart';
import 'package:riverpod_pagination_example/data/remote/network.dart';

part 'github_api.g.dart';

final githubApiProvider = Provider((ref) => GithubApi(ref.read(dioProvider)));

@RestApi()
abstract class GithubApi {
  factory GithubApi(Dio dio, {String baseUrl}) = _GithubApi;

  @GET("search/repositories")
  Future<PaginatedResponse<RepositoryGet>> searchRepositories({
    @Query("q") required String query,
    @Query("sort") String? sort,
    @Query("order") String? order,
    @Query("page") int? page,
    @Query("per_page") int? perPage,
  });
}
