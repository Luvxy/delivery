import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class ScreenI extends StatelessWidget {
  void changePassword(String password, BuildContext context) {
    User user = FirebaseAuth.instance.currentUser!;
    user.updatePassword(password);
    _showMyDialog(context);
  }
  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('변경 완료'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('비밀번호 변경이 완료되었습니다!!!!!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('확인'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('내 정보'),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView(padding: const EdgeInsets.all(15.0), children: [
          Container(
              height: 100,
              color: Colors.grey,
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/dawny.jpg'),
                    backgroundColor: Colors.white,
                    radius: 40.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '홍길동 2xxxxxxx',
                        style:
                            TextStyle(color: Colors.black, letterSpacing: 2.0),
                      ),
                      Text(
                        '관련학부',
                        style:
                            TextStyle(color: Colors.black, letterSpacing: 2.0),
                      ),
                      Text(
                        '010-xxxx-xxxx',
                        style:
                            TextStyle(color: Colors.black, letterSpacing: 2.0),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
            child: Column(
              children: [
                RaisedButton(onPressed: () {
                  changePassword('123456', context);
                })
              ],
            ),
          ),
        ]));
  }
}
