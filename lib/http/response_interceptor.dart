import 'package:dio/dio.dart';
import 'package:flutter_demo_1/http/base_model.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class ResponseInterceptor extends InterceptorsWrapper {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 200) {
      try {
        BaseModel res = BaseModel.formJson(response.data);
        if (res.errorCode == 0) {
          if (res.data == null) {
            handler.next(
                Response(requestOptions: response.requestOptions, data: true));
          } else {
            handler.next(Response(
                requestOptions: response.requestOptions, data: res.data));
          }
        } else if (res.errorCode == -1001) {
          handler.next(Response(
              requestOptions: response.requestOptions, data: res.data));
        } else {
          handler.reject(DioException(
              requestOptions: response.requestOptions, message: "未登录"));
        }
      } catch (e) {
        logger.d('$e');
        handler.reject(DioException(
            requestOptions: response.requestOptions,
            message: "响应拦截json解析报错:$e"));
      }
    }
  }
}
