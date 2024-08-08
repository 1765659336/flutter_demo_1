import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // Remember to dispose the Tab Controller when done.
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Top Tab Page"),
          bottom: TabBar(
            controller: tabController,
            tabs: const [
              Tab(text: "Tab1"),
              Tab(text: "Tab2"),
              Tab(text: "Tab3")
            ],
          ),
        ),
        body: TabBarView(controller: tabController, children: const [
          Center(child: Text("Content of Tab1")),
          Center(child: Text("Content of Tab2")),
          Center(child: Text("Content of Ta3"))
        ]));
  }
}
