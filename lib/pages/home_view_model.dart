import 'package:dio/dio.dart';
import 'package:flutter_demo_1/datas/home_banner_data/datum.dart';
import 'package:flutter_demo_1/datas/home_banner_data/home_banner_data.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class HomeViewModel {
  // 异步耗时操作使用Future
  static Future<List<HomeBannerDataDatum>?> getBanner() async {
    Dio dio = Dio();
    dio.options = BaseOptions(
        method: 'GET',
        baseUrl: 'https://www.wanandroid.com/',
        // 指定建立连接的超时时间为30秒，如果在这段时间内无法建立连接，则会抛出超时异常。
        connectTimeout: const Duration(seconds: 30),
        // 指定接收数据的超时时间为30秒，如果在这段时间内无法接收到数据，则会抛出超时异常。
        receiveTimeout: const Duration(seconds: 30),
        // 指定发送数据的超时时间为30秒，如果在这段时间内无法发送完数据，则会抛出超时异常。
        sendTimeout: const Duration(seconds: 30));
    Response response = await dio.get('banner/json');
    HomeBannerData homeBannerData = HomeBannerData.fromJson('$response');
    return homeBannerData.data;
  }
}
