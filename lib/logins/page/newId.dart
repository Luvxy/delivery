import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class newId extends StatelessWidget {

  void _signUp(String _email, String _password, BuildContext context) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _email, password: _password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        showSnackBar3(context);
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        showSnackBar2(context);
      }
    } catch (e) {
    }
  }

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

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
                                  controller: controller,
                                  decoration:
                                  InputDecoration(labelText: 'Enter email'),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                TextField(
                                  controller: controller2,
                                  decoration: InputDecoration(
                                      labelText: 'Enter Password'),
                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                ),
                                TextField(
                                  controller: controller3,
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
                                        if(controller2.text != controller3.text){
                                          showSnackBar(context);
                                        }else{
                                          _signUp(controller.text, controller2.text, context);
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
