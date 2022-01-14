import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
/**
 * 层叠布局，针对于2个元素，进行层叠布局，效果不错
 */
void main() => runApp(MyApp(
      items: new List<String>.generate(100, (i) => "item $i"),
    ));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({@required this.items});

  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
        alignment: const FractionalOffset(0.5, 0.8),
        children: <Widget>[
          new CircleAvatar(
              backgroundImage: new NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              ),
              radius: 100.0),
          new Container(
            decoration: new BoxDecoration(color: Colors.blue),
            padding: EdgeInsets.all(5.0),
            child: new Text('果果来了'),
          )
        ]);
    return MaterialApp(
        title: 'row widget demo',
        home: Scaffold(
          appBar: new AppBar(
            title: Text('层叠布局'),
          ),
          body: Center(
            child: stack,
          ),
        ));
  }
}
