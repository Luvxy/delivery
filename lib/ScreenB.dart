import 'package:flutter/material.dart';


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




class time extends StatelessWidget {
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
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('주문하기'),
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
                    Column(children: [
                      Container(
                        child: Form(
                          child: Theme(
                            data: ThemeData(
                              primaryColor: Theme.of(context).primaryColor,
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
                                Container(
                                  child: Column(
                                    children: [
                                      RaisedButton(
                                        child: Text(
                                          '지도 찾기',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),
                                        ),
                                        color: Theme.of(context).accentColor,
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/map');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 400,
                                  height: 20,
                                  child: Text('물건을 받을 장소'),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      RaisedButton(
                                        child: Text(
                                          '지도 찾기',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),
                                        ),
                                        color: Theme.of(context).accentColor,
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/map');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                TextField(
                                  controller: controller,
                                  decoration:
                                  InputDecoration(labelText: '물건 이름'),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    width: 400,
                                    height: 20,
                                    child: Text('요청사항'),
                                  ),
                                ),
                                TextField(
                                  controller: controller2,
                                  decoration:
                                  InputDecoration(labelText: '요청사항'),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(
                                  height: 100,
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
                                      color: Theme.of(context).accentColor,
                                      onPressed: () {
                                        if (controller == null) {
                                          showSnackBar(context);
                                        } else {
                                          showSnackBar2(context);
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
                                      Future<TimeOfDay?> future = showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                      );

                                      future.then((timeOfDay) {
                                        setState(() {
                                          if (timeOfDay == null) {
                                            _selectedTime = '';
                                          } else {
                                            _selectedTime = '${timeOfDay.hour}:${timeOfDay.minute}';
                                          }
                                        });
                                      });
                                      Navigator.of(context).pop;
                                    },
                                  ),
                                )
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