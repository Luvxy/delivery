import 'package:flutter/material.dart';

class detail1 extends StatelessWidget {
  final String text;
  final String place;
  final String place2;
  final String time;

  const detail1(this.text,this.place,this.place2,this.time, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('주문내역 상세'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('배달 정보', style: TextStyle(fontSize: 30, color: Colors.white),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('물건이름 : $text', style: TextStyle(fontSize: 20, color: Colors.white),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('장소 : $place -> $place2', style: TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('가격 : 1000 원', style: TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('결제수단 : 카드', style: TextStyle(fontSize: 20, color: Colors.white)),
                      ),
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('배달원 정보', style: TextStyle(fontSize: 30, color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('배달원 닉네임 : 하늘에달린소', style: TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text('배달 시간 : $time', style: TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Text(''),
                      ),
                    ),
                    Container(
                      child: RaisedButton(
                        color: Colors.red,
                        child: Text('신고하기',style: TextStyle(fontSize: 20, color: Colors.white)),
                        onPressed: (){},
                      ),
                    ),
                  ]
                ),
              ),
            ],
        ),
      ),
    );
  }
}