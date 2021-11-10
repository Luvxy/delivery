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
import 'detail2.dart';
import 'logins/login.dart';
import 'logins/page/home.dart';
import 'logins/page/newId.dart';
import 'time.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple,
        accentColor: Colors.limeAccent,
        brightness: Brightness.light,
        fontFamily: 'Montserrat',
      ),
      initialRoute: '/log',
      routes: {
        '/log' : (context) => login(),
        '/a' : (context) => ScreenA(),
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
        '/detail2' : (context) => detail2(),
        '/new' : (context) => newId(),
        '/time' : (context) => time(),
      },
    );

  }
}
