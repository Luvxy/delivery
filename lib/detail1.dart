import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screena/provider/provider.dart';

class detail1 extends StatefulWidget {

  const detail1({Key? key}) : super(key: key);

  @override
  State<detail1> createState() => _detail1State();
}

class _detail1State extends State<detail1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('주문내역 상세'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ChangeNotifierProvider<Counts>(
        create: (_) => Counts(),
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(15.0),
              children: [
                Container(
                  height: 400,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('배달 정보', style: TextStyle(fontSize: 30, color: Colors.white),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('물건이름 : ${context.watch<Counts>().ob}', style: TextStyle(fontSize: 20, color: Colors.white),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('장소 : ${context.watch<Counts>().str} -> ${context.watch<Counts>().pp}', style: TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('시간 : ${context.watch<Counts>().timek}', style: TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('가격 : 1000 원', style: TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('결제수단 : 카드', style: TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('배달원 정보', style: TextStyle(fontSize: 30, color: Colors.white)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text('배달원 닉네임 : 하늘에달린소', style: TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text(''),
                        ),
                      ),
                      Container(
                        child: RaisedButton(
                          color: Colors.red,
                          child: Text('신고하기',style: TextStyle(fontSize: 20, color: Colors.white)),
                          onPressed: (){},
                        ),
                      ),
                    ]
                  ),
                ),
              ],
          ),
        ),
      ),
    );
  }
}