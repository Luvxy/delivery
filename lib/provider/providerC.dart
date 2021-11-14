import 'package:flutter/material.dart';

class domo with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  String? ob1;
  String? str2;
  String? pp3;
  String? timek4;

  String? get ob => ob1;
  String? get str => str2;
  String? get pp => pp3;
  String? get timek => timek4;


  void addOrder(String obname, String strPlace, String ppPlace, String? time) {
    ob1 = obname;
    str2= strPlace;
    pp3 = ppPlace;
    timek4 = time;
    notifyListeners();
  }
}