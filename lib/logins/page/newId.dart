import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class newId extends StatelessWidget {
  String _lastFirebaseResponse = "";
  setLastFBMessage(String msg) {
    _lastFirebaseResponse = msg;
  }

  void _signUp(String _email, String _password, BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email, password: _password);
      if (FirebaseAuth.instance.currentUser!.email != null) {
        // 인증 메일 발송
        FirebaseAuth.instance.currentUser!.sendEmailVerification();
        FirebaseAuth.instance.signOut();
      }
    } on FirebaseAuthException catch (e) {
      logger.e(e.toString());
      List<String> result = e.toString().split(", ");
      setLastFBMessage(result[1]);
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        showSnackBar3(context);
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        showSnackBar2(context);
      }
    }
  }


  bool isInteger(num value) => (value % 1) == 0;

  TextEditingController userId = TextEditingController();
  TextEditingController userPassword = TextEditingController();
  TextEditingController userPassword2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("회원가입"),
      ),
      body: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                  ),
                  Form(
                      child: Theme(
                          data: ThemeData(
                            primaryColor: Colors.teal,
                            inputDecorationTheme: InputDecorationTheme(
                                labelStyle: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 15.0,
                                )),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              children: <Widget>[
                                TextField(
                                  controller: userId,
                                  decoration:
                                  InputDecoration(labelText: 'Enter email'),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                TextField(
                                  controller: userPassword,
                                  decoration: InputDecoration(
                                      labelText: 'Enter Password'),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                ),
                                TextField(
                                  controller: userPassword2,
                                  decoration: InputDecoration(
                                      labelText: 'Enter Password again'),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                ),
                                SizedBox(
                                  height: 40.0,
                                ),
                                ButtonTheme(
                                    minWidth: 100.0,
                                    height: 50.0,
                                    child: RaisedButton(
                                      color: Colors.orangeAccent,
                                      child: Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 35.0,
                                      ),
                                      onPressed: () {
                                        var check = userId.text.toString().split("@");
                                        var checkNum = check[0].split('');
                                        if(check[1] != 'handong.edu'){
                                          print('${check[1]}');
                                          showSnackBar4(context);
                                        }
                                        else if(check[0].length > 8){
                                          showSnackBar5(context);
                                          try{
                                            var num = int.parse(check[0]);
                                          }catch(e){
                                            showSnackBar5(context);
                                          }
                                        }
                                        else if(checkNum[0] != '2'){
                                          showSnackBar5(context);
                                        }
                                        else if(userPassword.text != userPassword2.text){
                                          showSnackBar(context);
                                        }else{
                                          _signUp(userId.text, userPassword.text, context);
                                          Navigator.of(context).pop();
                                        }
                                      },
                                    ))
                              ],
                            ),
                          )))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void showSnackBar(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('비밀번호가 일치하지 않습니다.', textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar2(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('해당 이메일로 가입된 아이디가 이미 존재합니다.', textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar3(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('비밀번호가 너무 간단합니다.', textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar4(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('한동 이메일로만 가입 가능 합니다.', textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar5(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('잘못된 학번입니다.', textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}