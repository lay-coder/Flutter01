import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
import 'package:flutter01/pages/components/MyChart.dart';
import 'package:flutter01/pages/components/MySlider.dart';

class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  void getHttp() async {
    try {
      Response response = await Dio().get(
          "http://15.17.26.12:8089/api/photo/list?groupName=&pid=&page=1&pageSize=20");
      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  initState() {
    super.initState();
    getHttp();
    print('initState');
    // SchedulerBinding.instance
    //     .addPersistentFrameCallback((_) => {print('addPostFrameCallback')});
  }

  @override
  didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  addPostFrameCallback() {
    print('addPostFrameCallback');
  }

  @override
  deactivate() {
    super.deactivate();
    print('deative');
  }

  @override
  dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
