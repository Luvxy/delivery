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
      body: ListView(
        padding: const EdgeInsets.all(15.0),
        children: [
          Container(
            height: 300,
            color: Colors.grey,
            child: Column(
              children: [
                Container(
                  child: Text('내정보', style: TextStyle(fontSize: 20, color: Colors.black),),
                ),
                Text('신문수')
              ],
            ),
          ),
          SizedBox(
            height: 30,
            child: Text('계정', style: TextStyle(fontSize: 20, color: Colors.black)),
          ),
          Container(
            height: 300,
            color: Colors.grey,
          ),
        ]
      )
      );
  }
}