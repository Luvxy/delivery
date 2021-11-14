import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screena/ScreenB.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:screena/provider/providerC.dart';
import 'chat.dart';

class ScreenC extends StatefulWidget {
  final String? obname;
  ScreenC({Key? key, @required this.obname}) : super(key: key);

  @override
  State<ScreenC> createState() => _ScreenCState();
}

class _ScreenCState extends State<ScreenC> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Query query = FirebaseFirestore.instance.collection("order");
  var _count = 0;
  TextEditingController _controller = TextEditingController();
  List<chat> _chat = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('배달대기목록'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ChangeNotifierProvider<domo>(
        create: (_) => domo(),
        child: Builder(builder: (context) {
          return Center(
            child: ListView(
              padding: const EdgeInsets.all(10),
              children: [
                Expanded(
                  child:ListView.builder(
                    // reverse: true,
                    itemBuilder: (context, index){
                      return _chat[index];
                    },
                    itemCount: _chat.length,
                  ),
                ),
              ],
            ),
          );
        }),
      ),

    );
  }
  void sendText(){
    setState(() {
      chat newChat = chat();
      _chat.insert(0, newChat);
    });

    _controller.clear();
  }
}
// class chang extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return ChannelsBloc(
//       child: ChannelListView(
//         padding: EdgeInsets.only(top: 10),
//         sort: [SortOption('last_message_at')],
//         pagination: PaginationParams(limit: 30),
//         separatorBuilder: (_, __) => Container(height: 0),
//         channelPreviewBuilder: (BuildContext anotherContext, Channel channel) =>
//             getCustomChannelItem(context, channel),
//       ),
//     );
//   }
// }
