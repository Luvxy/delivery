import 'package:flutter/material.dart';

class ScreenD1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenD1'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          'ScreenD1',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}