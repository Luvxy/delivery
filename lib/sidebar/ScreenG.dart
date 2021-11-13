import 'package:flutter/material.dart';

class ScreenG extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('신고하기'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('안녕하세요',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
              letterSpacing: 2.0,
            ),
            ),
            Text('무엇을 도와드릴까요?',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
              letterSpacing: 2.0,
            ),
            ),
          ],
        ),
      ),
    );
  }
}