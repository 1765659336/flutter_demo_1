import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class SystemLoading {
  // 私有构造函数，不能被实例
  SystemLoading._();

  static Future showLoading() async {
    showToastWidget(
        Container(
          color: Colors.black54,
          child: const Center(
            child: CircularProgressIndicator(
              strokeWidth: 6,
              backgroundColor: Colors.white,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
            ),
          ),
        ),
        // 禁用背景点击
        handleTouch: true,
        duration: const Duration(days: 1));
  }

  static void closeLoading() {
    dismissAllToast();
  }
}
