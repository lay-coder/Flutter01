import 'package:flutter/cupertino.dart';

class MyCount with ChangeNotifier {
  int _counter = 0;
  int get count => _counter;
  set count(int newVal) {
    _counter = newVal;
    notifyListeners();
  }
}
