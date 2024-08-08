// 路由地址
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/constants/global.dart';
import 'package:flutter_demo_1/pages/hot_key_search/hot_key_search_page.dart';
import 'package:flutter_demo_1/pages/login/login_page.dart';
import 'package:flutter_demo_1/pages/tab_bar/tab_bar_page.dart';
import 'package:flutter_demo_1/pages/tab_page.dart';
import 'package:flutter_demo_1/pages/web_view_page.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class RoutePath {
  // 登录
  static const String login = '/';
  // 系统页
  static const String tab = '/tab';
  // 网页页面
  static const String webViewPage = '/web_view_page';
  // tabTar示例页面
  static const String tabBar = '/tab_bar';
  // 搜索页
  static const String hotKeySearch = 'hot_key_search';
}

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Map<String, dynamic>? arguments =
        settings.arguments as Map<String, dynamic>?;
    logger.d('settings.name: ${settings.name}');
    // 如果没有登录，那么前往登录页
    if (globalToken == null) {
      return pageRoute(const LoginPage());
    }
    switch (settings.name) {
      case RoutePath.login:
        // 如果前往的是登录页，那么判断是否已经登录，如果已经登录，则跳转到系统页
        if (globalToken != null) {
          return pageRoute(const TabPage());
        }
        return pageRoute(const LoginPage());
      case RoutePath.tab:
        return pageRoute(const TabPage());
      case RoutePath.webViewPage:
        final String title = arguments?['title'] ?? '';
        return pageRoute(WebViewPage(title: title));
      case RoutePath.tabBar:
        return pageRoute(const TabBarPage());
      case RoutePath.hotKeySearch:
        final String routeSearchText = arguments?['routeSearchText'] ?? '';
        return pageRoute(HotKeySearchPage(
          routeSearchText: routeSearchText,
        ));
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
