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
          child: RouteButton(),
        ));
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigatorToMs(context);
      },
      child: Text('go'),
    );
  }

  _navigatorToMs(BuildContext context) async {
    print('go to ms');
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => Ms()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
    print('push back $result');
  }
}

class Ms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('i am ms')),
        body: Center(
            child: Column(children: <Widget>[
          RaisedButton(
              child: Text('ms 1'),
              onPressed: () {
                Navigator.pop(context, 'ms 1');
              }),
          RaisedButton(
              child: Text('ms 2'),
              onPressed: () {
                Navigator.pop(context, 'ms 2');
              })
        ])));
  }
}
