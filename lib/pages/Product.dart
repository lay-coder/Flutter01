import 'package:flutter/material.dart';
import 'package:flutter01/store/myCount.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  final arguments;
  ProductPage({Key key, this.arguments}) : super(key: key);

  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyCount>(
      builder: (context, myCount, _) => Scaffold(
        appBar: AppBar(
          title: Text('商品页面'),
        ),
        body: Text("${myCount.count}"),
      ),
    );
  }
}
