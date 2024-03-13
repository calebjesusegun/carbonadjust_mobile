import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../app/app.logger.dart';
import '../data_model/error_model.dart';
import '../exceptions/carbon_adjust_exceptions.dart';
import '../generated/l10n.dart';
import '../interceptors/app_interceptors.dart';

class DioService {
  late final Dio _dio;
  final _logger = getLogger('DioService');

  DioService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "",
        connectTimeout: const Duration(seconds: 30),
      ),
    );
    if (kDebugMode) {
      _dio.interceptors.addAll([
        LogInterceptor(
          responseBody: true,
          requestHeader: true,
          responseHeader: false,
          request: false,
          requestBody: true,
        ),
        AppInterceptor(),
      ]);
    }
    _dio.interceptors.add(AppInterceptor());
  }

  Future post({
    required String path,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    } catch (e, s) {
      _logger.wtf('Could not make a request to this path: $path', e, s);
    }
  }

  Future get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await _dio.get(
        path,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    } catch (e, s) {
      _logger.wtf('Could not make a request to this path: $path', e, s);
    }
  }

  Future put({
    required String path,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await _dio.put(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    } catch (e, s) {
      _logger.wtf('Could not make a request to this path: $path', e, s);
    }
  }

  Future patch({
    required String path,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await _dio.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    } catch (e, s) {
      _logger.wtf('Could not make a request to this path: $path', e, s);
    }
  }

  Future delete({
    required String path,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final Response response = await _dio.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );

      return response.data;
    } on DioException catch (e) {
      _handleError(e);
    } catch (e, s) {
      _logger.wtf('Could not make a request to this path: $path', e, s);
    }
  }

  void _handleError(DioException e) {
    if (e.type == DioExceptionType.unknown && e.error is SocketException) {
      throw CarbonAdjustException(message: S.current.no_internet);
    }

    if (e.type == DioExceptionType.connectionTimeout) {
      throw CarbonAdjustException(message: S.current.connection_timeout);
    }

    if (e.type == DioExceptionType.connectionError) {
      throw CarbonAdjustException(message: S.current.connection_error);
    }

    if (e.response?.statusCode == 500) {
      throw CarbonAdjustException(message: S.current.service_unavailable);
    }

    throw CarbonAdjustException(
        message: ErrorModel.fromJson(e.response?.data).message ??
            S.current.unknown_error);
  }
}
