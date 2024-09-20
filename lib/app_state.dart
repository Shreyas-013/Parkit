import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _hoursSelect = 0;
  int get hoursSelect => _hoursSelect;
  set hoursSelect(int value) {
    _hoursSelect = value;
  }

  int _hourRate = 25;
  int get hourRate => _hourRate;
  set hourRate(int value) {
    _hourRate = value;
  }

  int _totalamount = 0;
  int get totalamount => _totalamount;
  set totalamount(int value) {
    _totalamount = value;
  }
}
