import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: '导航演示', home: new FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: new Text('导航页面')),
      body: Center(
        child: RaisedButton(
          child: Text('查看商品详情'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (content) => new SecondeScreen()));
          },
        ),
      ),
    );
  }
}

class SecondeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: new Text('二级页面')),
        body: Center(
          child: RaisedButton(
            child: Text('返回'),
            onPressed: () {
              print(context);
              Navigator.pop(context);
            },
          ),
        ));
  }
}
