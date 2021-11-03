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
        child: ListView(
          padding: const EdgeInsets.all(15.0),
            children: [
              Container(
                height: 400,
                color: Colors.grey,
                child: Column(
                  children: [
                    Container(
                      child: Text('물건이름 : 실내화', style: TextStyle(fontSize: 20, color: Colors.white),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                color: Colors.grey,
              ),
            ],
        ),
      ),
    );
  }
}