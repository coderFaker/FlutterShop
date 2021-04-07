import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/zpnavigator_page.dart';

void main() => runApp(MyApp());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Container(
      child: MaterialApp(
        title: '百姓生活+',
        theme: ThemeData(primaryColor: Colors.pink),
        home: ZPNavigationPage(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '百姓生活+',
        theme: ThemeData(primaryColor: Colors.pink),
        home: ZPNavigationPage(),
      ),
    );
  }
}
