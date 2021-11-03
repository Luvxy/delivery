import 'package:flutter/material.dart';

class ScreenF extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('문의'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          '문의',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}