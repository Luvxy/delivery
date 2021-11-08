import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:screena/logins/page/mypage.dart';
import 'package:screena/logins/page/sign_in.dart';
import 'package:screena/ScreenA.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> user) {
          if (user.data == null) {
            return SignIn();
          } else {
            return ScreenA();
          }
        });
  }
}
