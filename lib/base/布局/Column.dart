import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
// 默认是由子元素进行撑起的，是不灵活的布局，可以通过expend关键字，变为灵活布局
void main() => runApp(MyApp(
      items: new List<String>.generate(100, (i) => "item $i"),
    ));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({@required this.items});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'row widget demo',
        home: Scaffold(
          appBar: new AppBar(
            title: Text('垂直方向布局'),
          ),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('I am Guoguo'),
                Expanded(child: null),
                Text('niuniuniu')
              ],
            ),
          ),
        ));
  }
}
