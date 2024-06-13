import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;

  CounterModel() {
    _loadCounter();
  }

  int get count => _count;

  void increment() {
    _count++;
    _saveCounter();
    notifyListeners();
  }

  void reset() {
    _count = 0;
    _saveCounter();
    notifyListeners();
  }

  Future<void> _loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _count = prefs.getInt('counter') ?? 0;
    notifyListeners();
  }

  Future<void> _saveCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('counter', _count);
  }
}
