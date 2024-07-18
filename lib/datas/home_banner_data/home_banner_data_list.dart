import 'package:flutter_demo_1/datas/home_banner_data/home_banner_data.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class HomeBannerDataList {
  List<HomeBannerData>? bannerList;
  HomeBannerDataList.fromJson(dynamic json) {
    if (json is List) {
      bannerList = [];
      for (var element in json) {
        bannerList?.add(HomeBannerData.fromJson(element));
      }
    }
  }
}
