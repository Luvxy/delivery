import 'package:flutter/material.dart';

class ScreenD extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('공지사항'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          '공지사항',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}