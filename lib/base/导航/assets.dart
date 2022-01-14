import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    title: '页面返回数据',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('找ms')),
        body: Center(
          child: new Image.asset('images/a.png'),
        ));
  }
}
