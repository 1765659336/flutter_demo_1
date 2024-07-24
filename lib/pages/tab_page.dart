import 'package:flutter/material.dart';
import 'package:flutter_demo_1/pages/home/home_page.dart';

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
    return const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      )
    ];
  }
}
