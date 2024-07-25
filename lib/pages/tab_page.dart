/* 
  底部导航栏
*/

import 'package:flutter/material.dart';
import 'package:flutter_demo_1/pages/home/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: [
            // Home Page
            const HomePage(),
            // Search Page
            Container(color: Colors.green),
            // Profile Page
            Container(color: Colors.blue),
          ],
        ),
      ),
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: _barItemList(),
        // 点击事件
        onTap: (index) {
          _currentIndex = index;
          setState(() {});
        },
      ),
    );
  }

  List<BottomNavigationBarItem> _barItemList() {
    return [
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/home-line.png',
          width: 24.h,
          height: 24.h,
        ),
        activeIcon: Image.asset(
          'assets/images/home-double.png',
          width: 24.h,
          height: 24.h,
        ),
        label: '首页',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/etc-line.png',
          width: 24.h,
          height: 24.h,
        ),
        activeIcon: Image.asset(
          'assets/images/etc-double.png',
          width: 24.h,
          height: 24.h,
        ),
        label: '功能',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/admin-line.png',
          width: 24.h,
          height: 24.h,
        ),
        activeIcon: Image.asset(
          'assets/images/admin-double.png',
          width: 24.h,
          height: 24.h,
        ),
        label: '个人',
      )
    ];
  }
}
