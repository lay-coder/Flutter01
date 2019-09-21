import 'package:flutter/material.dart';
import 'package:flutter01/routes/Routes.dart' as routesConfig;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),
      // routes: {
      //   '/form': (context) => FormPage(),
      //   '/setting': (context) => Setting(),
      // },
      initialRoute: '/',
      onGenerateRoute: routesConfig.onGenerateRoute,
    );
  }
}
