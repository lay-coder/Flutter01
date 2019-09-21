import 'package:flutter/material.dart';
import 'package:flutter01/pages/Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('分类'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              RaisedButton(
                child: Text('跳转到表单页面'),
                onPressed: () {
                  // 路由跳转
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => FormPage(),
                    ),
                  );
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
