import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class PrintLogInterceptor extends InterceptorsWrapper {
  // 请求拦截器
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    logger.d(
        'baseUrl:${options.baseUrl} method:${options.method} queryParameters:${options.queryParameters} data:${options.data}');
    super.onRequest(options, handler);
  }

  // 响应拦截器
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d(response);
    super.onResponse(response, handler);
  }

  // 错误拦截器
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    logger.d('$err');
    super.onError(err, handler);
  }
}
