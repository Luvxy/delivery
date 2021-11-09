import 'package:flutter/material.dart';

class ScreenG extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('신고'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          '신고',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}