import 'package:flutter/material.dart';

class ScreenD extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('공지사항'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    width: 370,
                    height: 260,
                    child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        child: Image.asset('assets/1.png',fit: BoxFit.contain,),
                        onPressed: () {Navigator.pushNamed(context, '/d1');}),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    width: 370,
                    height: 260,
                    child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        child: Text(
                          '공지사항',
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                        onPressed: () {Navigator.pushNamed(context, '/d1');}),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    width: 370,
                    height: 260,
                    child: RaisedButton(
                        color: Theme.of(context).accentColor,
                        child: Text(
                          '공지사항',
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        ),
                        onPressed: () {Navigator.pushNamed(context, '/d1');}),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}