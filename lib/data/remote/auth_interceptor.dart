import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authInterceptorProvider = Provider((ref) => AuthInterceptor());

class AuthInterceptor extends Interceptor {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    const token = String.fromEnvironment('GITHUB_TOKEN');
    if (token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return super.onRequest(options, handler);
  }
}
