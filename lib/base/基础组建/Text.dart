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
            child: Text(
              '果果的flutter果果的flutter果果的flutter果果的flutter果果的flutter果果的flutter果果的flutter果果的flutter果果的flutter',
               textAlign: TextAlign.center,
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
               style: TextStyle(
                 fontSize: 25,
                 color: Color.fromARGB(255, 255, 125, 125),
                 decoration: TextDecoration.underline,
                 decorationStyle: TextDecorationStyle.dashed
               ),
               ),
          ),
        ));
  }
}
