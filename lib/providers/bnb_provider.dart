import 'package:flutter/material.dart';

class BnbIndexProvider extends ChangeNotifier{
  int _currentIndex = 1;

  int get currentIndex => _currentIndex;

  void setcurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}