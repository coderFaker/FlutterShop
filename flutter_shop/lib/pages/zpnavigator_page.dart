import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home/home_page.dart';
import 'catagory/catagory_page.dart';
import 'shopping/shop_car_page.dart';
import 'mine/mine_page.dart';

class ZPNavigationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ZPNavigationPageState();
  }
}

class _ZPNavigationPageState extends State<ZPNavigationPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search), title: Text('分类')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart), title: Text('购物车')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), title: Text('会员中心')),
  ];

  final List<Widget> tabbodys = [
    HomePage(),
    CategoryPage(),
    ShopCarPage(),
    MinePage(),
  ];
  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    currentPage = tabbodys[currentIndex];
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: bottomTabs,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            this.currentIndex = index;
            this.currentPage = tabbodys[this.currentIndex];
          });
        },
      ),
    );
  }
}
