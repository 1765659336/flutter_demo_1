import 'package:dio/dio.dart';
import 'package:flutter_demo_1/http/http_method.dart';
import 'package:flutter_demo_1/http/print_log_interceptor.dart';
import 'package:flutter_demo_1/http/response_interceptor.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class DioInstance {
  static DioInstance? _instance;

  /* 
    使用了 Dart 的命名约定 _() 来表示这是一个私有构造函数。
    私有构造函数阻止了类被直接实例化，
    因此无法从类外部使用 new DioInstance() 来创建新实例。
   */
  DioInstance._();

  static DioInstance get instance {
    // 如果 _instance 为空，则创建一个新的 DioInstance 实例
    return _instance ??= DioInstance._();
  }

  final Dio _dio = Dio();

  //  默认时间
  final _defaultTime = const Duration(seconds: 30);

  // 初始化 Dio 实例，设置一些默认的配置
  void initState({
    required String baseUrl,
    String? httpMethod = HttpMethod.GET,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    Duration? sendTimeout,
    // 响应体的类型
    ResponseType? responseType = ResponseType.json,
    String? contentType,
  }) {
    _dio.options = BaseOptions(
        method: httpMethod,
        baseUrl: baseUrl,
        // 指定建立连接的超时时间为30秒，如果在这段时间内无法建立连接，则会抛出超时异常。
        connectTimeout: connectTimeout ?? _defaultTime,
        // 指定接收数据的超时时间为30秒，如果在这段时间内无法接收到数据，则会抛出超时异常。
        receiveTimeout: receiveTimeout ?? _defaultTime,
        // 指定发送数据的超时时间为30秒，如果在这段时间内无法发送完数据，则会抛出超时异常。
        sendTimeout: sendTimeout ?? _defaultTime,
        responseType: responseType,
        contentType: contentType);
    // 添加拦截器，可以添加多个拦截器
    // 打印拦截器
    _dio.interceptors.add(PrintLogInterceptor());
    // 数据处理拦截器
    _dio.interceptors.add(ResponseInterceptor());
  }

  // 封装get请求
  Future get({
    required String path,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await _dio.get(
      path,
      queryParameters: queryParameters,
      options: options ??
          Options(
              method: HttpMethod.GET,
              receiveTimeout: _defaultTime,
              sendTimeout: _defaultTime),
      cancelToken: cancelToken,
    );
  }

  // 封装post请求
  Future post({
    required String path,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options ??
          Options(
              method: HttpMethod.POST,
              receiveTimeout: _defaultTime,
              sendTimeout: _defaultTime),
      cancelToken: cancelToken,
    );
  }
}
