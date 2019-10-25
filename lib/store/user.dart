import 'package:flutter/material.dart';

class Token with ChangeNotifier {
  String _token = '';
  String get token => _token;
  set token(String val) {
    _token = val;
    notifyListeners();
  }
}

class UserInfo with ChangeNotifier {
  Map _userInfo = {};
  get userInfo => _userInfo;
  set userInfo(val) {
    _userInfo = val;
    notifyListeners();
  }
}
