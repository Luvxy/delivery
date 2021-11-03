import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenC'),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          'ScreenC',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}