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
          appBar: AppBar(
            title: Text('welcome to myapp', textAlign: TextAlign.left),
          ),
          body: Center(
            child: Container(
              child: new Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                // fit: BoxFit.scaleDown, // 容器和图片的模式
                // color: Colors.greenAccent,
                // colorBlendMode: BlendMode.difference ,
                repeat: ImageRepeat.noRepeat,
              ),
              width: 400,
              height: 200,

              // color: Colors.blue,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(width: 5, color: Colors.red)),
            ),
          ),
        ));
  }
}
