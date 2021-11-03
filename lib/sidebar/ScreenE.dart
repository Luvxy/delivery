import 'package:flutter/material.dart';

class ScreenE extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('주문내역'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          '주문내역',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}