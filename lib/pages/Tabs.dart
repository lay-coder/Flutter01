import 'package:flutter/material.dart';
import 'package:flutter01/pages/tabs/My.dart';
import './tabs/Category.dart';
import './tabs/Setting.dart';
import './tabs/Home.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currenIndex = 0;
  List _pageList = [HomePage(), CategoryPage(), Setting(), MyPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this._pageList[this._currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currenIndex,
        onTap: (int index) {
          print(index);
          setState(() {
            this._currenIndex = index;
          });
        },
        iconSize: 30.0,
        // fixedColor: Colors.blue, // 选中颜色
        type: BottomNavigationBarType.fixed, // 配置底部tabs可以有多个按钮,否则最多三个
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('设置'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('我的'),
          )
        ],
      ),
    );
  }
}
