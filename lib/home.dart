import 'package:flutter/material.dart';
import 'package:hoge/pages/menu_list.dart';
import 'package:hoge/pages/hello.dart';

class Hello extends StatefulWidget {
  @override
  _HelloState createState() => _HelloState();
}

class _HelloState extends State<Hello> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.7,
        title: Text('こんにちは世界'),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert)
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.orange,
          tabs: <Widget>[
            Tab(icon: new Icon(Icons.camera_alt)),
            Tab(text: '一覧'),
            Tab(text: '設定'),
          ]
        )
      ),
      body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            HelloScreen(),
            MenuListScreen(),
            HelloScreen(),
          ]
      )
    );
  }
}
