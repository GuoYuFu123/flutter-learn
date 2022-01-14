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
            body: new ListView(children: <Widget>[
              new ListTile(
                leading: new Icon(Icons.ac_unit),
                title: new Text('果果'),
              ),new ListTile(
                leading: new Icon(Icons.access_alarm),
                title: new Text('果果'),
              ),new ListTile(
                leading: new Icon(Icons.access_alarm_rounded),
                title: new Text('果果'),
              ),
            ])));
  }
}
