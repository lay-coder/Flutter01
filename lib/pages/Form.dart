import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  final String title;
  // FormPage(this.title);
  FormPage({this.title = '表单'});
  // FormPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () {
          // Navigator.of(context).pop();
          Navigator.pop(context);
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('表单页面'),
          )
        ],
      ),
    );
  }
}
