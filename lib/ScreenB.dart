import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:screena/chat.dart';
import 'package:screena/detail1.dart';
import 'package:screena/order.dart';
import 'package:screena/sidebar/ScreenE.dart';

class time extends StatefulWidget {
  @override
  State<time> createState() => _timeState();
}

class _timeState extends State<time> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '예약 시간',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenB(),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: ScreenB(),
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

class ScreenB extends StatefulWidget {
  @override
  _ScreenBState createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  String _selectedTime = '';
  TextEditingController object = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController strPlace = TextEditingController();
  TextEditingController ppPlace = TextEditingController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('주문하기'),
          backgroundColor: Theme
              .of(context)
              .primaryColor,
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
                    Column(children: [
                      Container(
                        child: Form(
                          child: Theme(
                            data: ThemeData(
                              primaryColor: Theme
                                  .of(context)
                                  .primaryColor,
                              inputDecorationTheme: InputDecorationTheme(
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 15.0,
                                  )),
                            ),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 400,
                                  height: 20,
                                  child: Text('물건이 있는 장소'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: strPlace,
                                  decoration: InputDecoration(labelText: '상세 장소'),
                                  keyboardType:
                                  TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 400,
                                  height: 20,
                                  child: Text('물건을 받을 장소'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: ppPlace,
                                  decoration: InputDecoration(labelText: '상세 장소'),
                                  keyboardType:
                                  TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 400,
                                  height: 20,
                                  child: Text('물건 이름'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: object,
                                  decoration:
                                  InputDecoration(labelText: '물건 이름'),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  width: 400,
                                  height: 20,
                                  child: Text('요청사항'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: controller2,
                                  decoration:
                                  InputDecoration(labelText: '요청사항'),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  width: 200,
                                  height: 50,
                                  child: RaisedButton(
                                      child: Text(
                                        '주문하기',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      color: Theme
                                          .of(context)
                                          .accentColor,
                                      onPressed: () {
                                        if (object == null) {
                                          showSnackBar(context);
                                        } else {
                                          showSnackBar2(context);
                                          order(
                                            object.text,
                                            ppPlace.text,
                                            controller2.text,
                                            context,);
                                          //해당 유저의 doc의 count 업데이트
                                          update();
                                          Navigator.pop(context);
                                          showComplete(context);
                                        }
                                      }),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 200,
                                  height: 50,
                                  child: RaisedButton(
                                    child: Text('예약하기'),
                                    color: Colors.purple,
                                    textColor: Colors.white,
                                    onPressed: () {
                                      Future<TimeOfDay?> future =
                                      showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                      );
                                      future.then((timeOfDay) {
                                        setState(() {
                                          if (timeOfDay == null) {
                                            _selectedTime = '';
                                          } else {
                                            _selectedTime =
                                            '${timeOfDay.hour}:${timeOfDay
                                                .minute}';
                                            order2(
                                                object.text,
                                                ppPlace.text,
                                                _selectedTime,
                                                controller2.text,
                                                context);
                                            //해당 유저의 doc의 count 업데이트
                                            update();
                                            Navigator.pop(context);
                                            ScreenE();
                                            showComplete2(
                                                context, _selectedTime);
                                          }
                                        });
                                      });
                                    },
                                  ),
                                ),
                                // ValueListenableBuilder(
                                //   valueListenable: _counter,
                                //   builder: (BuildContext context, value, Widget? detail1) {
                                //     return chat();
                                //   },
                                // ),
                              ]),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
