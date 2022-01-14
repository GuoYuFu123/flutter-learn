import 'package:flutter/material.dart';
import 'package:myapp/demo01/pages/home_screen.dart';
import 'package:myapp/demo01/pages/email_screen.dart';
import 'package:myapp/demo01/pages/time_screen.dart';
import 'package:myapp/demo01/pages/info_screen.dart';

// stful
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _BottomNavigationColor = Colors.cyan;

  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    //..add()是Dart语言的..语法，返回调用者本身
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(TimeScreen())
      ..add(InfoScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _BottomNavigationColor,
            ),
            label: 'home'),
        BottomNavigationBarItem(
          icon: new Icon(
            Icons.email,
            color: _BottomNavigationColor,
          ),
          label: 'email',
        ),
        BottomNavigationBarItem(
          icon: new Icon(
            Icons.access_time,
            color: _BottomNavigationColor,
          ),
          label: 'time',
        ),
        BottomNavigationBarItem(
          icon: new Icon(
            Icons.comment,
            color: _BottomNavigationColor,
          ),
          label: 'comment',
        )
      ],
      selectedItemColor: _BottomNavigationColor,
      // backgroundColor: Colors.red,
      currentIndex: _currentIndex,
      onTap: (int index) {
        print('index = $index $list');
        setState(() {
          _currentIndex = index;
        });
      },
      type: BottomNavigationBarType.shifting,
    ));
  }
}
