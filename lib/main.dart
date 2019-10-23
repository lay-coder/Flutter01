import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter01/routes/Routes.dart' as routesConfig;
import 'package:flutter01/store/index.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
  // 透明状态栏
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle =
        SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: appStore,
      child: MaterialApp(
        // home: Tabs(),
        // routes: {
        //   '/form': (context) => FormPage(),
        //   '/setting': (context) => Setting(),
        // },
        initialRoute: '/',
        onGenerateRoute: routesConfig.onGenerateRoute,
      ),
    );
  }
}
