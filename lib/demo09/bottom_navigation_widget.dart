import 'package:flutter/material.dart';

class BottomNavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('expansion tile demo')),
        body: Center(
            child: ExpansionTile(
          title: Text('expansion tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.orange,
          children: <Widget>[
            ListTile(title: Text('list tile'), subtitle: Text('subtitle'))
          ],
          // initiallyExpanded: true,
        )));
  }
}
