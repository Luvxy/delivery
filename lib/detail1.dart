import 'package:flutter/material.dart';

class detail1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('주문내역 상세'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          '주문내역 상세',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}