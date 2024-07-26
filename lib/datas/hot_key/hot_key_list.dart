import 'package:flutter_demo_1/datas/hot_key/hot_key.dart';

class HotKeyList {
  List<HotKey>? data;

  HotKeyList.fromJson(dynamic json) {
    if (json is List) {
      data = [];
      for (var element in json) {
        data?.add(HotKey.fromJson(element));
      }
    }
  }
}
