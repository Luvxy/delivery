import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ScreenI extends StatelessWidget {


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
                        '프로필 사진 변경',
                        style: TextStyle(color: Colors.black87, fontSize: 20),
                      ),
                      onPressed: () {

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
                        '닉네임 변경',
                        style: TextStyle(color: Colors.black87, fontSize: 20),
                      ),
                      onPressed: () {

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