import 'package:flutter/material.dart';
// import 'package:myapp/demo01/widgets/bottom_navigation_widget.dart';
// import 'package:myapp/demo02/widgets/bottom_navigation_widget.dart';
// import 'package:myapp/demo03/widgets/bottom_navigation_widget.dart';

// import 'package:myapp/demo04/bottom_navigation_widget.dart'; // 毛玻璃
// import 'package:myapp/demo05/bottom_navigation_widget.dart';

// import 'package:myapp/demo06/bottom_navigation_widget.dart'; // 状态保持

// import 'package:myapp/demo07/bottom_navigation_widget.dart'; // 搜索框

// import 'package:myapp/demo08/bottom_navigation_widget.dart'; // 流式布局

// import 'package:myapp/demo09/bottom_navigation_widget.dart'; // 展开闭合

// import 'package:myapp/demo10/bottom_navigation_widget.dart'; // 展开闭合 list

// import 'package:myapp/demo11/bottom_navigation_widget.dart'; // 贝塞尔曲线

import 'package:myapp/demo13/bottom_navigation_widget.dart'; // StreamBuilder 流的形式

main(List<String> args) {
  runApp(new MyApp());
}

//stless

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      theme: ThemeData(primaryColor: Colors.lightBlue),
      home: BottomNavigationWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
