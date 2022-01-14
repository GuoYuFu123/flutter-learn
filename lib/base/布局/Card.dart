import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
/**
 * 定位布局： 针对于根元素进行定位
 */
void main() => runApp(MyApp(
      items: new List<String>.generate(100, (i) => "item $i"),
    ));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({@required this.items});

  @override
  Widget build(BuildContext context) {
    var card = new Card(
        child: Column(children: <Widget>[
      ListTile(
        title: Text('guoguo', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('哈哈'),
        leading: new Icon(
          Icons.access_alarm_sharp,
          color: Colors.blue,
        ),
      ),
      new Divider(),
      ListTile(
        title: Text('guoguo', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('哈哈'),
        leading: new Icon(
          Icons.access_alarm_sharp,
          color: Colors.blue,
        ),
      ),
      new Divider(),
      ListTile(
        title: Text('guoguo', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('哈哈'),
        leading: new Icon(
          Icons.access_alarm_sharp,
          color: Colors.blue,
        ),
      ),
    ]));
    return MaterialApp(
        title: 'row widget demo',
        home: Scaffold(
          appBar: new AppBar(
            title: Text('card布局'),
          ),
          body: Center(
            child: card,
          ),
        ));
  }
}
