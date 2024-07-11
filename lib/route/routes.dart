// 路由地址
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/pages/home_page.dart';
import 'package:flutter_demo_1/pages/web_view_page.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class RoutePath {
  // 首页
  static const String home = '/';
  // 网页页面
  static const String webViewPage = '/web_view_page';
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Map<String, dynamic>? arguments =
        settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
      case RoutePath.home:
        return pageRoute(const HomePage());
      case RoutePath.webViewPage:
        final String title = arguments?['title'] ?? '';
        return pageRoute(WebViewPage(title: title));
      default:
        return pageRoute(Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ));
    }
  }

  static MaterialPageRoute pageRoute(
    Widget page, {
    RouteSettings? settings,
    bool fullscreenDialog = false,
    bool maintainState = true,
    bool allowSnapshotting = true,
  }) {
    return MaterialPageRoute(
        builder: (_) => page,
        settings: settings,
        fullscreenDialog: fullscreenDialog, // 是否全屏对话框
        maintainState: maintainState, // 当前路由是否keepAlive缓存
        allowSnapshotting:
            allowSnapshotting // 当应用退回到后台时，是否保留状态，这样在下次打开应用时，可以快速响应
        );
  }
}
