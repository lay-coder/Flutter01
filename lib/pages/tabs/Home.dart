import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              child: Text('跳转搜索页面'),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => FormPage(title: '跳转传值'),
                //   ),
                // );
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) =>
                //           SearchPage(arguments: {'id': this._counter}),
                //     ));
                Navigator.pushNamed(context, '/search',
                    arguments: {'id': this._counter});
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '关键词',
              ),
            ),
            RaisedButton(
              child: Text('跳转商品页面'),
              onPressed: () {
                Navigator.pushNamed(context, '/product');
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
