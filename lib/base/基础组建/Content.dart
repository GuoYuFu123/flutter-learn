import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// Container就相当于div
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
              child: new Text('hello guoguo',
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 255, 125, 125),
                  )),
                  alignment: Alignment.topLeft,
                  width: 500.0,
                  height: 400.0,
                  // color: Colors.lightBlue,
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  margin: const EdgeInsets.all(10),
                  decoration: new BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.lightBlue, Colors.blueGrey, Colors.pink]
                    ),
                    border: Border.all(width: 5, color: Colors.red)
                  ),
                  
            ),
          ),
        ));
  }
}
