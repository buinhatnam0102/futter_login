import 'dart:async';
import 'dart:convert';
import 'package:sample/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class User{
  final String userID;
  final String userName;
  final String  mail;
  User({@required this.userID,@required this.userName,@required this.mail});
  factory User.fromJson(Map<String,dynamic> json){
    return User(userID: json['userID'], userName: json['userName'], mail: json['mail']);
  }
}


class HomePage extends StatefulWidget {
  final User user;

  const HomePage({Key key, this.user}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Text(this.widget.user.userID),
          Divider(),
          Text(this.widget.user.userName),
          Divider(),
          Text(this.widget.user.mail),
          Divider(),
                  ],


        // child: Container(
        //   height: 80,
        //   width: 150,
        //   decoration: BoxDecoration(
        //       color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        //   child: FlatButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     child: Text(
        //       this.widget.user.userName,
        //       style: TextStyle(color: Colors.white, fontSize: 25),
        //
        //     ),
        //   ),
        // ),
      ),
    );
  }
}