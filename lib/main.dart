import 'package:flutter/material.dart';

import 'child_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'xy_flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'xy_flutter'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final List<HomeMenu> menus = [
    HomeMenu('page1', '页面1'),
    HomeMenu('page2', '页面2'),
    HomeMenu('page3', '页面3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
          itemCount: menus.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(menus[index].title),
              onTap: () {
                HomeMenu homeMenu = menus[index];
                String id = homeMenu.id;
                String title = homeMenu.title;
                if (id == 'page1') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChildPage(title: title)));
                } else if (id == 'page2') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChildPage(title: title)));
                } else if (id == 'page3') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChildPage(title: title)));
                }
              },
            );
          }),
    );
  }
}

class HomeMenu {
  String id;
  String title;

  HomeMenu(this.id, this.title);
}
