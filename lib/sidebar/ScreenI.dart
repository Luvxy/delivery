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
            height: 100,
            color: Colors.grey,
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset("dawny.jpg", width:200),
                Text('홍길동 2xxxxxxx',
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0
                ),
                ),
                Text('관련학부',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0
                  ),
                ),
                Text('010-xxxx-xxxx',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            child: Text('계정',
                style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  letterSpacing: 2.0
                )
            ),
          ),
          Container(
            height: 70,
            color: Colors.grey,
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('학교 인증',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0
                  ),
                ),
                Text('비밀번호 설정',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0
                ),
                ),
                Text('이메일 변경',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            child: Text('커뮤니티',
                style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          ),
          Container(
            height: 70,
            color: Colors.grey,
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('닉네임 설정 변경',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0
                  ),
                ),
                Text('프로필 이미지 변경',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0
                  ),
                ),
                Text('이용 제한 내역',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            child: Text('커뮤니티',
                style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
          ),
          Container(
            height: 150,
            color: Colors.grey,
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('정보 동의 설정',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0
                  ),
                ),
                Text('회원 탈퇴',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0
                  ),
                ),
                Text('로그아웃',
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 2.0
                  ),
                ),
              ],
            ),
          ),
        ]
      )
      );
  }
}