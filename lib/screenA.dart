import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar icon'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
        elevation: 0.0,
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.shopping_cart),
        //     onPressed: (){
        //       print('Shopping cart button is clicked');
        //     },
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.search),
        //     onPressed: (){
        //       print('search button is clicked');
        //     },
        //   )
        // ],
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
              accountEmail: Text('22000107@handong.edu'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850]),
              title: Text('home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[850]),
              title: Text('Setting'),
              onTap: () {
                print('setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850]),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
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
                  padding: const EdgeInsets.fromLTRB(0,20,0,20),
                  child: Container(
                    width: 410,
                    height: 250,
                    color: Colors.grey,
                    child: Text('공지사항',
                      style: TextStyle(color: Colors.white, fontSize: 20),),
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
                        color: Colors.red,
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
                        color: Colors.red,
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
