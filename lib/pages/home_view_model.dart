import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/datas/home_article_data/home_article_data.dart';
import 'package:flutter_demo_1/datas/home_banner_data/home_banner_data_datum.dart';
import 'package:flutter_demo_1/datas/home_banner_data/home_banner_data.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class HomeViewModel with ChangeNotifier {
  List<HomeBannerDataDatum>? bannerData;
  HomeArticleData? homeArticle;
  Dio dio = Dio();

  void initState() {
    dio.options = BaseOptions(
        method: 'GET',
        baseUrl: 'https://www.wanandroid.com/',
        // 指定建立连接的超时时间为30秒，如果在这段时间内无法建立连接，则会抛出超时异常。
        connectTimeout: const Duration(seconds: 30),
        // 指定接收数据的超时时间为30秒，如果在这段时间内无法接收到数据，则会抛出超时异常。
        receiveTimeout: const Duration(seconds: 30),
        // 指定发送数据的超时时间为30秒，如果在这段时间内无法发送完数据，则会抛出超时异常。
        sendTimeout: const Duration(seconds: 30));
  }

  // 异步耗时操作使用Future
  Future getBanner() async {
    Response response = await dio.get('banner/json');
    HomeBannerData homeBannerData = HomeBannerData.fromJson('$response');
    if (homeBannerData.data != null) {
      bannerData = homeBannerData.data;
    } else {
      bannerData = [];
    }
    // 告诉provider值有变化
    notifyListeners();
  }

  Future getHomeList() async {
    Response response = await dio.get('article/list/1/json');
    HomeArticleData homeArticleData = HomeArticleData.fromJson(response.data);
    homeArticle = homeArticleData;
    // 告诉provider值有变化
    notifyListeners();
  }
}
