import 'package:flutter/material.dart';

class ExpandStateBean {
  var isOpen;
  var index;
  ExpandStateBean(this.index, this.isOpen);
}

class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  var currentIndex = -1;
  List<int> mList;
  List<ExpandStateBean> expndStateList;

  _BottomNavigationWidgetState() {
    mList = new List();
    expndStateList = new List();
    // 构造数据
    for (int i = 0; i < 10; i++) {
      mList.add(i);
      expndStateList.add(ExpandStateBean(i, false));
    }
  }
  // 修改展开和合并
  _setCurrentIndex(int index, bool isExpand) {
    setState(() {
      expndStateList.forEach((element) {
        if (element.index == index) {
          element.isOpen = !isExpand;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('expandion panel list')),
        body: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (index, bol) {
              _setCurrentIndex(index, bol);
            },
            children: mList.map((index) {
              return ExpansionPanel(
                  headerBuilder: (context, isExpand) {
                    return ListTile(title: Text('this is No $index'));
                  },
                  body: ListTile(title: Text('expansion no.$index')),
                  isExpanded: expndStateList[index].isOpen);
            }).toList(),
          ),
        ));
  }
}
