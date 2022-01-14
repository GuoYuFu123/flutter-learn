import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  void initState() {
    print('12');
    this.countStream(3);
     print('23');
    super.initState();
  }

  Stream<int> countStream(int max) async* {
    print('countStream');
    for (int i = 0; i < max; i++) {
      print(i);
      // yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stream version of the Counter App')),
      body: Center(child: new Text('center')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print('onpress');
        },
      ),
    );
  }
}
