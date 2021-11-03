import 'package:flutter/material.dart';

class ScreenH extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('배달원 등록'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          '배달원 등록',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}