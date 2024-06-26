import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_pagination_example/app/app_config.dart';
import 'package:riverpod_pagination_example/data/remote/auth_interceptor.dart';

final dioProvider = Provider((ref) {
  final options = BaseOptions(baseUrl: AppConfig.baseUrl);
  final dio = Dio(options);
  dio.interceptors.add(ref.read(authInterceptorProvider));
  if (!kReleaseMode) {
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
    ));
  }
  return dio;
});
