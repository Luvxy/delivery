import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ScreenI extends StatelessWidget {

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('delivery@handong.edu로 문의주세요.'),
          actions: <Widget>[
            TextButton(
              child: const Text('확인'),
              onPressed: () {
                Navigator.of(context).pop();
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
              height: 50,
              color: Colors.grey,
              padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${FirebaseAuth.instance.currentUser!.email}',
                        style:
                        TextStyle(color: Colors.black, letterSpacing: 2.0),
                      ),
                    ],
                  ),
                ],
              )),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  width: 370,
                  height: 50,
                  child: RaisedButton(
                      color: Colors.white,
                      child: Text(
                        '비밀번호 변경',
                        style: TextStyle(color: Colors.black87, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/change');
                      }),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  width: 370,
                  height: 50,
                  child: RaisedButton(
                      color: Colors.white,
                      child: Text(
                        '회원 탈퇴',
                        style: TextStyle(color: Colors.black87, fontSize: 20),
                      ),
                      onPressed: () {
                        _showMyDialog(context);
                      }),
                ),
              ),
            ],
          ),
          Container(
            // child: Column(
            //   children: [
            //     RaisedButton(onPressed: () {
            //       changePassword('123456', context);
            //     })
            //   ],
            // ),
          ),
        ]));
  }

}