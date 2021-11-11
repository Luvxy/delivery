import 'package:flutter/material.dart';


class time extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<time> {
  String _selectedTime = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('예약하기'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('시간 선택'),
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
            Text(
              '예약 시간 : $_selectedTime',
            ),
          ],
        ),
      ),
    );
  }
}