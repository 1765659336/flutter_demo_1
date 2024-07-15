import 'package:flutter/material.dart';
import 'package:flutter_demo_1/datas/home_banner_data/datum.dart';
import 'package:flutter_demo_1/pages/home_view_model.dart';
import 'package:flutter_demo_1/route/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:logger/logger.dart';

final Logger logger = Logger();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<HomeBannerDataDatum>? bannerData;
  @override
  void initState() {
    super.initState();
    initBannerData();
  }

  void initBannerData() async {
    bannerData = await HomeViewModel.getBanner();
    // 因为接口是异步来的数据，所以当数据来时，build已经执行了，需要手动触发页面更新
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 开启顶部安全区
      body: SafeArea(
          child: Column(
        children: [
          _banner(),
          // Expanded填充页面剩余空间
          Expanded(
              child:
                  // 列表
                  ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return _listViewItem(index);
                      }))
        ],
      )),
    );
  }

  Widget _banner() {
    return // 轮播图
        SizedBox(
      width: double.infinity,
      height: 150.h,
      child: Swiper(
          // 轮播数量
          itemCount: bannerData?.length ?? 0,
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
                child: Image.network(bannerData?[index].imagePath ?? ''));
          }),
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
          child: const Column(children: [
            Row(
              children: [
                Text("#001"),
                SizedBox(width: 8.0),
                Text("[审核事务板块]事务审核页面卡片中字段对齐问题"),
              ],
            ),
            Row(
              children: [
                Text("功能"),
                Text("高"),
                Text("未开发"),
                Text("潘玥"),
                Text("刘杰"),
              ],
            ),
            Row(
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
