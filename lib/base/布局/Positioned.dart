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
    var stack = new Stack(
        alignment: const FractionalOffset(0.5, 0.8),
        children: <Widget>[
          new CircleAvatar(
              backgroundImage: new NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              ),
              radius: 100.0),
          new Positioned(top: 10, left: 10, child: new Text('果果来了')),
          new Positioned(top: 10, left: 10, child: new Text('guoguo来了')),
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
