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
            // body: GridView.count(
            //   padding: const EdgeInsets.all(20),
            //   crossAxisSpacing: 10,
            //   crossAxisCount: 3,
            //   childAspectRatio: 0.7, 
            //   children: <Widget>[
            //     new Text('我是果果1'),
            //     new Text('我是果果2'),
            //     new Text('我是果果3'),
            //     new Text('我是果果4'),
            //     new Text('我是果果5'),
            //     new Text('我是果果6'),
            //   ],
            // )
            body: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                childAspectRatio: 0.7,
              ) ,
              children: <Widget>[
             new Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
             new Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),

            ],
            ),
            ));
  }
}
