import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('한동 배달앱'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/dawny.jpg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/moon.jpg'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/moon.jpg'),
                //   backgroundColor: Colors.white,
                //   ),
              ],
              accountName: Text('dawny'),
              accountEmail: Text('${FirebaseAuth.instance.currentUser!.email}'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.announcement, color: Colors.grey[850]),
              title: Text('공지사항'),
              onTap: () {
                  Navigator.pushNamed(context, '/d');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.view_list_rounded, color: Colors.grey[850]),
              title: Text('주문내역'),
              onTap: () {
                Navigator.pushNamed(context, '/e');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.account_box_outlined, color: Colors.grey[850]),
              title: Text('문의'),
              onTap: () {
                Navigator.pushNamed(context, '/f');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.warning_amber_outlined, color: Colors.grey[850]),
              title: Text('신고'),
              onTap: () {
                Navigator.pushNamed(context, '/g');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind_outlined, color: Colors.grey[850]),
              title: Text('배달원 등록'),
              onTap: () {
                Navigator.pushNamed(context, '/h');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.account_circle_rounded, color: Colors.grey[850]),
              title: Text('내 정보'),
              onTap: () {
                Navigator.pushNamed(context, '/i');
              },
              trailing: Icon(Icons.add),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                        },
                        child: Text("로그아웃"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Container(
                    width: 370,
                    height: 260,
                    child: RaisedButton(
                        color: Colors.grey,
                        child: Text(
                          '공지사항',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/d');
                        }),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          '주문하기',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/b');
                        }),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          '배달하기',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/c');
                        }),
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