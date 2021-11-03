import 'package:flutter/material.dart';

class ScreenI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 정보'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          '내 정보',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}