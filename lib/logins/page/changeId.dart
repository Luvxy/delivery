import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class changeId extends StatelessWidget {
  String _lastFirebaseResponse = "";

  setLastFBMessage(String msg) {
    _lastFirebaseResponse = msg;
  }

  void changePassword(String password, BuildContext context) async {
    User user = FirebaseAuth.instance.currentUser!;
    user.updatePassword(password);
    _showMyDialog(context);
  //   try {
  //
  //
  // } on FirebaseAuthException catch (e) {
  //     logger.e(e.toString());
  //     List<String> result = e.toString().split(", ");
  //     setLastFBMessage(result[1]);
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //       showSnackBar3(context);
  //     }
  //   }
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
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }



  bool isInteger(num value) => (value % 1) == 0;


  TextEditingController userPassword2 = TextEditingController();
  TextEditingController userPassword3 = TextEditingController();
  String? Password = FirebaseAuth.instance.currentUser!.updatePassword.toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("비밀번호 변경"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Builder(
        builder: (context) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(),
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
                                  controller: userPassword2,
                                  decoration:
                                  InputDecoration(labelText: '변경할 비밀번호(6자리 이상)'),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                ),
                                TextField(
                                  controller: userPassword3,
                                  decoration:
                                  InputDecoration(labelText: '변경할 비밀번호 확인'),
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
                                        if (userPassword2.text !=
                                            userPassword3.text) {
                                          showSnackBar(context);
                                        }
                                        else if (userPassword2 == 'weak-password') {
          print('The password provided is too weak.');
          showSnackBar3(context);}
                                        else {
                                          changePassword(userPassword2.text, context);
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

  void showSnackBar(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('비밀번호가 일치하지 않습니다.', textAlign: TextAlign.center),
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
}