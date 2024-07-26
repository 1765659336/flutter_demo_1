import 'package:flutter_demo_1/datas/hot_key_web_page_data/hot_key_web_page_data.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class HotKeyWebPageDataList {
  List<HotKeyWebPageData>? data;
  HotKeyWebPageDataList.fromJson(dynamic json) {
    if (json is List) {
      data = [];
      for (var element in json) {
        data?.add(HotKeyWebPageData.fromJson(element));
      }
    }
  }
}
