import 'package:flutter/material.dart';

class BottomNavProv extends ChangeNotifier {
  int _index = 0;
  int get getIndex => _index;
  set setIndex(props) {
    _index = props;
    notifyListeners();
  }
}
