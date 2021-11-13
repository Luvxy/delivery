import 'package:flutter/material.dart';

class ScreenF extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('문의하기'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('안녕하세요.',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
            Text('무엇을 도와드릴까요?',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            Divider(
              height: 50.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('대표상담전화',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.black,
              letterSpacing: 1.0,
            ),
            ),
            Text('080. 000. 0000',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                letterSpacing: 1.0,
              ),
            ),
            Text('09:00 ~ 18:00 (점심시간 12:00 ~ 13:00)',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('서비스/배달 관련   080.000.0000',
                style: TextStyle(
                  fontSize: 15.0,
                ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('이메일 문의   delivery@handong.edu',
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}