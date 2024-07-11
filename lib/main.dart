import 'package:flutter/material.dart';
import 'package:flutter_demo_1/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(textTheme: const TextTheme()),
      home: const ScreenUtilInit(
        designSize: Size(360, 690), // 设计稿尺寸大小
        minTextAdapt: true, // 根据系统文字大小设置自适应
        splitScreenMode: true, // 支持分屏模式适配
        child: HomePage(), // 应用的主界面或主页
      ),
    );
  }
}
