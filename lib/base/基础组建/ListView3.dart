import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp(
      items: new List<String>.generate(100, (i) => "item $i"),
    ));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({@required this.items});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'text widget',
        home: Scaffold(
            appBar: new AppBar(
              title: Text('welcome to myapp', textAlign: TextAlign.left),
            ),
            body: Center(
              child: new ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (content, index) {
                    return new ListTile(
                      title: new Text('${items[index]}'),
                    );
                  }),
            )));
  }
}
