import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/datas/home_article_data/home_article_data.dart';
import 'package:flutter_demo_1/datas/home_article_data/home_article_data_datas.dart';
import 'package:flutter_demo_1/datas/home_banner_data/home_banner_data.dart';
import 'package:flutter_demo_1/datas/home_banner_data/home_banner_data_list.dart';
import 'package:flutter_demo_1/http/dio_instance.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class HomeViewModel with ChangeNotifier {
  List<HomeBannerData>? homeBannerDataList;
  List<HomeArticleDataDatas>? homeArticleDataDatasList;

  // 异步耗时操作使用Future
  Future getBanner() async {
    Response response = await DioInstance.instance.get(path: 'banner/json');
    HomeBannerDataList data = HomeBannerDataList.fromJson(response.data);
    if (data.bannerList != null) {
      homeBannerDataList = data.bannerList;
    } else {
      homeBannerDataList = [];
    }
    // 告诉provider值有变化
    notifyListeners();
  }

  Future getHomeList() async {
    Response response =
        await DioInstance.instance.get(path: 'article/list/1/json');
    HomeArticleData homeArticleData = HomeArticleData.fromJson(response.data);
    if (homeArticleData.datas != null) {
      homeArticleDataDatasList = homeArticleData.datas;
    } else {
      homeArticleDataDatasList = [];
    }

    // 告诉provider值有变化
    notifyListeners();
  }
}
