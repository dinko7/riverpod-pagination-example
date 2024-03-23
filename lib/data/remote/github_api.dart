import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_pagination_example/data/remote/network.dart';

part 'github_api.g.dart';

final githubApiProvider = Provider((ref) => GithubApi(ref.read(dioProvider)));

@RestApi()
abstract class GithubApi {
  factory GithubApi(Dio dio, {String baseUrl}) = _GithubApi;

  @GET("search/repositories")
  Future<void> searchRepositories({@Query("q") required String query, @Query("page") int? page});
}
