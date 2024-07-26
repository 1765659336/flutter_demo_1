import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/datas/hot_key/hot_key.dart';
import 'package:flutter_demo_1/datas/hot_key/hot_key_list.dart';
import 'package:flutter_demo_1/datas/hot_key_web_page_data/hot_key_web_page_data.dart';
import 'package:flutter_demo_1/datas/hot_key_web_page_data/hot_key_web_page_data_list.dart';
import 'package:flutter_demo_1/http/dio_instance.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class HotKeyViewModel with ChangeNotifier {
  List<HotKeyWebPageData>? webPageDataList;
  List<HotKey>? hotKeyList;

  // 异步耗时操作使用Future
  Future getHotKeyWebPage() async {
    Response response = await DioInstance.instance.get(path: 'friend/json');
    HotKeyWebPageDataList data = HotKeyWebPageDataList.fromJson(response.data);
    if (data.data != null) {
      webPageDataList = data.data;
    } else {
      webPageDataList = [];
    } // 告诉provider值有变化
    notifyListeners();
  }

  Future getHotKey() async {
    Response response = await DioInstance.instance.get(path: 'hotkey/json');
    HotKeyList data = HotKeyList.fromJson(response.data);
    if (data.data != null) {
      hotKeyList = data.data;
    } else {
      hotKeyList = [];
    } // 告诉provider值有变化
    notifyListeners();
  }
}
