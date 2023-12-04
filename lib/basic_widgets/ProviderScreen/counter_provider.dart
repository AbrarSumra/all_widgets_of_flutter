import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _counter = 0;
  int _counter2 = 0;

  int getCount() {
    return _counter;
  }

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    if (_counter > 0) {
      _counter--;
    }
    notifyListeners();
  }

  set counterValue(int value) {
    _counter2 = value;
    notifyListeners();
  }

  int get counterValue {
    return _counter2;
  }
}
