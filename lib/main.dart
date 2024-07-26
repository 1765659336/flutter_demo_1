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
              // 设置主题样式
              theme: ThemeData(
                primarySwatch: Colors.yellow, // 这里设置主色调为黄色
                primaryColor: const Color(0xFFFFCC00), // 应用中的主要颜色
                buttonTheme: const ButtonThemeData(
                  buttonColor: Color(0xFFFFCC00), // 按钮的背景颜色
                  textTheme: ButtonTextTheme.primary, // 按钮文本颜色
                ),
                inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFFFFCC00)), // 输入框边框颜色
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color(0xFFFFCC00), width: 2.0), // 聚焦时的边框颜色
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onGenerateRoute: Routes.generateRoute,
              initialRoute: RoutePath.login);
        });
  }
}
