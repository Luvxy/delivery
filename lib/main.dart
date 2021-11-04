import 'package:flutter/material.dart';
import 'ScreenA.dart';
import 'ScreenB.dart';
import 'ScreenC.dart';
import 'sidebar/ScreenD.dart';
import 'sidebar/ScreenE.dart';
import 'sidebar/ScreenF.dart';
import 'sidebar/ScreenG.dart';
import 'sidebar/ScreenH.dart';
import 'sidebar/ScreenI.dart';
import 'sidebar/ScreenD1.dart';
import 'maps.dart';
import 'detail1.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
        '/d' : (context) => ScreenD(),
        '/e' : (context) => ScreenE(),
        '/f' : (context) => ScreenF(),
        '/g' : (context) => ScreenG(),
        '/h' : (context) => ScreenH(),
        '/i' : (context) => ScreenI(),
        '/d1' : (context) => ScreenD1(),
        '/map' : (context) => map(),
        '/detail1' : (context) => detail1(),
      },
    );

  }
}
