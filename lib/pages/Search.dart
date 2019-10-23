import 'package:flutter/material.dart';
import 'package:flutter01/store/myCount.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatelessWidget {
  final arguments;
  SearchPage({Key key, this.arguments}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<MyCount>(context).count;
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面'),
      ),
      body: Text("搜索页面内容$count"),
    );
  }
}
