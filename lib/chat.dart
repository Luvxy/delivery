import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'detail1.dart';

class chat extends StatelessWidget {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Id or Name'),
                Text(''),
              ],
            ),
          ),
          SizedBox(
            width: 16,
          ),
          RaisedButton(
            child: Text('상세보기'),
            onPressed: () {
              detail1('사과','오석관','벧엘관','12:50');
            },
          ),
        ],
      ),
    );
  }
}
