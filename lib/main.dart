import 'package:flutter/material.dart';
import 'package:flutter_demo_1/http/dio_instance.dart';
import 'package:flutter_demo_1/route/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  // 初始化Dio
  DioInstance.instance.initState(baseUrl: 'https://www.wanandroid.com/');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690), // 设计稿尺寸大小
        minTextAdapt: true, // 根据系统文字大小设置自适应
        splitScreenMode: true, // 支持分屏模式适配
        builder: (context, child) {
          return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(),
              onGenerateRoute: Routes.generateRoute);
        });
  }
}
