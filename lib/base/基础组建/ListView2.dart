import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'text widget',
        home: Scaffold(
            appBar: new AppBar(
              title: Text('welcome to myapp', textAlign: TextAlign.left),
            ),
            body: Center(
              child: Container(
                height: 200,
                child: MyList(),
              ),
            )));
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(width: 200, height: 200, color: Colors.red),
        new Container(width: 200, height: 200, color: Colors.greenAccent),
        new Container(width: 200, height: 200, color: Colors.purpleAccent),
        new Container(width: 200, height: 200, color: Colors.brown),
      ],
    );
  }
}
