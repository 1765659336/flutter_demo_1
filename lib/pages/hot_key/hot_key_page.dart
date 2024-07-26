import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_demo_1/datas/hot_key/hot_key.dart';
import 'package:flutter_demo_1/pages/hot_key/hot_key_view_model.dart';
import 'package:flutter_demo_1/route/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HotKeyPage extends StatefulWidget {
  const HotKeyPage({super.key});

  @override
  State<HotKeyPage> createState() => _HotKeyPageState();
}

class _HotKeyPageState extends State<HotKeyPage> {
  HotKeyViewModel hotKeyViewModel = HotKeyViewModel();

  @override
  void initState() {
    super.initState();
    hotKeyViewModel.getHotKeyWebPage();
    hotKeyViewModel.getHotKey();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HotKeyViewModel>(
      create: (context) => hotKeyViewModel,
      child: Scaffold(
        body: Consumer<HotKeyViewModel>(
          builder: (context, hvm, child) {
            return SingleChildScrollView(
              child: Column(
                // 将对齐方式设置为左对齐
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  searchInput('热门搜索'),
                  const Text('搜索记录'),
                  // 添加间距或者调整布局
                  const SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true, // 让GridView根据内容收缩
                    physics: const NeverScrollableScrollPhysics(), // 禁止滚动
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      // 主轴的间隔
                      mainAxisSpacing: 10.w,
                      // 最大宽度
                      maxCrossAxisExtent: 120.w,
                      // 宽高比
                      childAspectRatio: 3,
                      // 横轴的间距
                      crossAxisSpacing: 10.w,
                    ),
                    itemBuilder: (context, index) {
                      return _gridViewItem(hvm.hotKeyList?[index].name ?? '');
                    },
                    itemCount: hvm.hotKeyList?.length ?? 0,
                  ),
                  const Text('热门网站'),
                  const SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true, // 让GridView根据内容收缩
                    physics: const NeverScrollableScrollPhysics(), // 禁止滚动
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      // 主轴的间隔
                      mainAxisSpacing: 10.w,
                      // 最大宽度
                      maxCrossAxisExtent: 120.w,
                      // 宽高比
                      childAspectRatio: 3,
                      // 横轴的间距
                      crossAxisSpacing: 10.w,
                    ),
                    itemBuilder: (context, index) {
                      return _gridViewItem(
                          hvm.webPageDataList?[index].name ?? '');
                    },
                    itemCount: hvm.webPageDataList?.length ?? 0,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // 搜索框
  Widget searchInput(String title) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 0.5.r, color: Colors.grey),
              bottom: BorderSide(width: 0.5.r, color: Colors.grey))),
      padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 5.h, bottom: 5.h),
      child: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 14.sp, color: Colors.black)),
          const Expanded(
            child: SizedBox(),
          ),
          Image.asset(
            'assets/images/search-double.png',
            width: 30.r,
            height: 30.r,
          )
        ],
      ),
    );
  }

  Widget _gridViewItem(String title) {
    return GestureDetector(
      onTap: () {
        // 点击事件
        Navigator.pushNamed(context, RoutePath.webViewPage,
            arguments: {'title': title});
      },
      child: Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
