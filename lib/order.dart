import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> order(String _obName, String _ppPlace, String _strPlace,
    BuildContext context) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  CollectionReference order = FirebaseFirestore.instance.collection('order');


  String? email = FirebaseAuth.instance.currentUser!.email.toString();
  String id = email;
  var counter = await order.doc(id).get();
  var db = counter.data();
  String dbList = db.toString();
  String dbListSp = dbList[20]+dbList[21];
  int dbNum = int.parse(dbListSp);

  int count = dbNum;
  String id1 = email + count.toString();
  var counter1= await order.doc(id).get();
  var db1 = counter1.data();
  String dbList1 = db1.toString();
  String dbListSp1 = dbList1[20]+dbList1[21];
  int dbNum1 = int.parse(dbListSp1);

  String? name = _obName;
  String? place = _ppPlace;
  String? strPlace = _strPlace;

  update();

  order.doc(email).set({
    'obName': name,
    'count' : 0,
    'ppPlace': place,
    'strPlace': strPlace,
  });
}

Future<void> order2(String _obName, String _ppPlace, String _time,
    String _other, BuildContext context) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  CollectionReference order = FirebaseFirestore.instance.collection('order');

  //해당 유저의 doc의 count 업데이트
  update();

  //해당 유저 doc에 저장되어 있는 count 불러오기
  String? email = FirebaseAuth.instance.currentUser!.email.toString(); //유저의 이메일을 저장
  var counter = await order.doc(email).get(); //해당 이메일에 저장된 doc 불러옴
  var db = counter.data(); //doc의 data를 불러옴
  String dbList = db.toString(); //data를 string 으로 바꿈
  String dbListSp = dbList[20]+dbList[21]; //data string에서 count 숫자를 추출
  int dbNum = int.parse(dbListSp); //count를 string 에서 int로 바꿈
  var id = email + dbListSp;

  String? name = _obName;
  String? place = _ppPlace;
  String? time = _time;
  String? other = _other;

  order.doc(id).set({
    'obName': name,
    'count' : dbNum,
    'ppPlace': place,
    'time': time,
    'other': other,
  });
}

Future<void> update() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  CollectionReference order = FirebaseFirestore.instance.collection('order');

  String? email = FirebaseAuth.instance.currentUser!.email.toString();
  String id = email;
  var counter = await order.doc(id).get();
  var db = counter.data();
  String dbList = db.toString();
  String dbListSp = dbList[20]+dbList[21];
  int dbNum = int.parse(dbListSp);

  int count = dbNum;
  print("1111111111111111111111");
  print(dbList);
  print(dbNum);
  print("1111111111111111111111");

  dbNum++;

  order.doc(id).update({
    'count': dbNum,
  });
}


void showSnackBar(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('요청할 물건을 입력해주세요', textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
  ));
}

void showSnackBar2(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('주문이 완료되었습니다', textAlign: TextAlign.center),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.redAccent,
  ));
}

Future<void> showComplete(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('주문 완료'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('주문이 완료되었습니다.'),
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

Future<void> showComplete2(BuildContext context, String _time) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('주문 완료'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('예약이 완료되었습니다.'),
              Text('예약 시간 : $_time'),
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
