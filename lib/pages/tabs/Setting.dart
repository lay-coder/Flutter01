import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '设置',
          style: TextStyle(fontSize: 18.0),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是一个文本'),
          ),
          ListTile(
            title: Text('我是一个文本'),
          ),
          ListTile(
            title: Text('我是一个文本'),
          ),
        ],
      ),
    );
  }
}
