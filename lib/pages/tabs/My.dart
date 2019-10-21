import 'package:flutter/material.dart';
import 'package:flutter01/pages/components/MyChart.dart';
import 'package:flutter01/pages/components/MySlider.dart';
import 'package:flutter01/store/index.dart';
import 'package:provider/provider.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => MySchedule(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '我的',
            style: TextStyle(fontSize: 18.0),
          ),
          leading: Builder(
            builder: (BuildContext context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                print("openDrawer");
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        body: Column(children: [
          Expanded(
            child: Padding(
              child: MyChart(),
              padding: const EdgeInsets.all(32),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: MySlider(),
          )
        ]),
      ),
    );
  }
}
