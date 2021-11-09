import 'package:flutter/material.dart';
import 'dart:math';

class ScreenE extends StatelessWidget {
  var obname = '실내화';
  var place = '오석관';
  var place2 = '벧엘관';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('주문내역'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Builder(builder: (context) {
        return Center(
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              // Container(
              //   height: 80,
              //   child: ListTile(
              //     title: Text('물건 이름', style: TextStyle(
              //         color: Colors.black, fontSize: 20),),
              //       tileColor: Colors.grey,
              //       onTap: () {
              //         Navigator.pushNamed(context, '/detail1');
              //       }),
              // ),
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
                              Text('$obname',style: TextStyle(fontSize: 20, color: Colors.black),),
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
                            Navigator.pushNamed(context, '/detail1');
                          },
                        )
                      )
                    ],
                  ),
                ),
              ),
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
                              Text('$obname',style: TextStyle(fontSize: 20, color: Colors.black),),
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
                              Navigator.pushNamed(context, '/detail1');
                            },
                          )
                      )
                    ],
                  ),
                ),
              ),
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
                              Text('$obname',style: TextStyle(fontSize: 20, color: Colors.black),),
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
                              Navigator.pushNamed(context, '/detail1');
                            },
                          )
                      )
                    ],
                  ),
                ),
              ),
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
                              Text('$obname',style: TextStyle(fontSize: 20, color: Colors.black),),
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
                              Navigator.pushNamed(context, '/detail1');
                            },
                          )
                      )
                    ],
                  ),
                ),
              ),
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
                              Text('$obname',style: TextStyle(fontSize: 20, color: Colors.black),),
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
                              Navigator.pushNamed(context, '/detail1');
                            },
                          )
                      )
                    ],
                  ),
                ),
              ),
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
                              Text('$obname',style: TextStyle(fontSize: 20, color: Colors.black),),
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
                              Navigator.pushNamed(context, '/detail1');
                            },
                          )
                      )
                    ],
                  ),
                ),
              ),
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
                              Text('$obname',style: TextStyle(fontSize: 20, color: Colors.black),),
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
                              Navigator.pushNamed(context, '/detail1');
                            },
                          )
                      )
                    ],
                  ),
                ),
              ),
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
                              Text('$obname',style: TextStyle(fontSize: 20, color: Colors.black),),
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
                              Navigator.pushNamed(context, '/detail1');
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
