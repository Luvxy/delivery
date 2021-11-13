import 'package:flutter/material.dart';
import 'dart:math';
import '../chat.dart';


class ScreenE extends StatefulWidget {
  @override
  State<ScreenE> createState() => _ScreenEState();
}

class _ScreenEState extends State<ScreenE> {
  TextEditingController _controller = TextEditingController();
  List<chat> _chat = [];


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
              Expanded(
                child: ListView.builder(
                  // reverse: true,
                  itemBuilder: (context, index) {
                    return _chat[index];
                  },
                  itemCount: _chat.length,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
  void _sendText(String text){
    setState(() {
      chat newChat = chat();
      _chat.insert(0, newChat);
    });

    _controller.clear();
  }
}
