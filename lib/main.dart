import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.teal[400]),
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text("Welcome"),
          centerTitle: true,
        ),
        body: Center(
            child: Text("hello world...", style: TextStyle(fontSize: 30))),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.radio_button_checked, color: Colors.white),
          backgroundColor: Colors.teal[400],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: Drawer(
            elevation: 10,
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("maahi"),
                  accountEmail: Text("maahisingh@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset("assets\ms.jpeg")),
                ),
                ListTile(
                    leading: Icon(Icons.access_alarm),
                    title: Text("Show My Notifications")),
              ],
            )),
        persistentFooterButtons: [
          RaisedButton(
              onPressed: () {},
              elevation: 10,
              color: Colors.white,
              child: Icon(
                Icons.print,
                color: Colors.teal[400],
              )),
          RaisedButton(
              onPressed: () {},
              elevation: 10,
              color: Colors.teal[400],
              child: Icon(
                Icons.save,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
