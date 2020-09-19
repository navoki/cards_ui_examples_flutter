import 'package:flutter/material.dart';

import 'AwesomePage.dart';
import 'BasicPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tabs Demo'),
          bottom: TabBar(
            tabs: [Tab(text: "Basic"), Tab(text: "Awesome")],
          ),
        ),
        body: TabBarView(
          children: [
            BasicPage(),
            AwesomePage(),
          ],
        ),
      ),
    );
  }
}
