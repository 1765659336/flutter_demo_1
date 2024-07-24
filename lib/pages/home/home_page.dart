import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo_1/pages/home/home_view_model.dart';
import 'package:flutter_demo_1/route/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

final Logger logger = Logger();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeViewModel homeViewModel = HomeViewModel();

  RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    // 触发provider仓库HomeViewModel的getBanner获取数据
    homeViewModel.getBanner();
    homeViewModel.getHomeList();
  }

  @override
  Widget build(BuildContext context) {
    // 使用ChangeNotifierProvider组件将数据往下传递
    return ChangeNotifierProvider<HomeViewModel>(
        create: (context) => homeViewModel,
        child: Scaffold(
          // 开启顶部安全区
          body: SafeArea(
              child: SmartRefresher(
                  controller: _refreshController,
                  // 开启下拉加载
                  enablePullDown: true,
                  // 开启上拉刷新
                  enablePullUp: true,
                  // 头部加载样式
                  header: const ClassicHeader(),
                  // 底部加载样式
                  footer: const ClassicFooter(),
                  // 上拉加载回调
                  onLoading: () {
                    // 定时器，模拟网络请求
                    Timer(const Duration(milliseconds: 500), () {
                      // 刷新完成
                      _refreshController.loadComplete();
                    });
                  },
                  // 下拉刷新回调
                  onRefresh: () {
                    // 定时器，模拟网络请求
                    Timer(const Duration(milliseconds: 500), () {
                      // 刷新完成
                      _refreshController.refreshCompleted();
                    });
                  },
                  child: Column(
                    children: [
                      _banner(),
                      // Expanded填充页面剩余空间
                      Consumer<HomeViewModel>(
                        builder: (context, hvm, child) {
                          return Expanded(
                              child: AbsorbPointer(
                                  // true表示吸收指针事件，false表示不吸收,禁用ListView的手势，从而生效SmartRefresher
                                  absorbing: true,
                                  // 列表
                                  child: ListView.builder(
                                      itemCount:
                                          hvm.homeArticleDataDatasList?.length,
                                      itemBuilder: (context, index) {
                                        return _listViewItem(index);
                                      })));
                        },
                      )
                    ],
                  ))),
        ));
  }

  // 轮播图
  Widget _banner() {
    // 使用Consumer组件监听HomeViewModel中的数据变化
    return Consumer<HomeViewModel>(
      builder: (context, hvm, child) {
        return SizedBox(
          width: double.infinity,
          height: 150.h,
          child: Swiper(
              // 轮播数量
              itemCount: hvm.homeBannerDataList?.length ?? 0,
              // 是否自动轮播
              autoplay: true,
              // 切换控制器
              control: const SwiperControl(),
              // 指示器
              indicatorLayout: PageIndicatorLayout.NONE,
              pagination: const SwiperPagination(),
              itemBuilder: (context, index) {
                return SizedBox(
                    width: double.infinity,
                    height: 150.h,
                    child: Image.network(
                        hvm.homeBannerDataList?[index].imagePath ?? ''));
              }),
        );
      },
    );
  }

  Widget _listViewItem(index) {
    return InkWell(
        onTap: () {
          logger.d('点击了第 $index 项');
          // 隐式路由切换
          Navigator.pushNamed(context, RoutePath.webViewPage,
              arguments: {'title': '第${index + 1}条数据标题'});
          // 动态路由切换
          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return WebViewPage(title: '第${index + 1}条数据标题');
          // }));
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15), // 设置内边距 左上右下
          child: Column(children: [
            Row(
              children: [
                Text('$index'),
                const SizedBox(width: 8.0),
                const Text("[审核事务板块]事务审核页面卡片中字段对齐问题"),
              ],
            ),
            const Row(
              children: [
                Text("功能"),
                Text("高"),
                Text("未开发"),
                Text("潘玥"),
                Text("刘杰"),
              ],
            ),
            const Row(
              children: [
                Text("20240711版本"),
                Text("2024-07-09"),
                Text("未发布"),
              ],
            ),
          ]),
        ));
  }
}
