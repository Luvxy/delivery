import 'package:flutter/material.dart';

class detail2 extends StatelessWidget {

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
              height: 300,
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
                      child: Text('물건이름 : 실내화', style: TextStyle(fontSize: 20, color: Colors.white),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text('장소 : 오석관 -> 벧엘관', style: TextStyle(fontSize: 20, color: Colors.white)),
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
              width: 200,
              height: 100,
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('수락하기', style: TextStyle(fontSize: 30, color: Colors.black)),
                onPressed: (){},
              ),
            ),
          ],
        ),
      ),
    );
  }
}