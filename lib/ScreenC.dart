import 'package:flutter/material.dart';
import 'package:screena/ScreenB.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class ScreenC extends StatefulWidget {
  final String? obname;

  ScreenC({Key? key, @required this.obname}) : super(key: key);

  @override
  State<ScreenC> createState() => _ScreenCState();
}

class _ScreenCState extends State<ScreenC> {
  var place = '오석관';

  var place2 = '벧엘관';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('배달대기목록'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Builder(builder: (context) {
        return Center(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.grey,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:200,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text('${widget.obname}',style: TextStyle(fontSize: 20, color: Colors.black),),
                              SizedBox(
                                height: 5,
                              ),
                              Text('$place->$place2', style: TextStyle(fontSize: 20, color: Colors.black),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          width: 110,
                          height: 75,
                          child: RaisedButton(
                            color: Theme.of(context).accentColor,
                            child: Text('상세보기',style: TextStyle(fontSize: 20, color: Colors.white),),
                            onPressed: (){
                              Navigator.pushNamed(context, '/detail2');
                            },
                          )
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),

    );
  }
}