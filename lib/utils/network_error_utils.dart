import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension AsyncErrorExceptionExtension on AsyncValue {
  DioException get dioException => error as DioException;
}

extension DioErrorExtension on DioException {
  String get errorMessage => switch (type) {
        DioExceptionType.cancel => 'Request to API server was cancelled',
        DioExceptionType.connectionTimeout =>
          'Connection timeout with API server',
        DioExceptionType.unknown => 'Please check your internet connection',
        DioExceptionType.receiveTimeout =>
          'Receive timeout in connection with API server',
        DioExceptionType.badResponse =>
          'Something went wrong. Please try again',
        DioExceptionType.sendTimeout =>
          'Send timeout in connection with API server',
        DioExceptionType.badCertificate => 'Unexpected error occured',
        DioExceptionType.connectionError => 'Unexpected error occured',
      };
}
