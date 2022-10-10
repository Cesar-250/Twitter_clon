// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import '../home.dart';

void main() => runApp(Twitter());

class Twitter extends StatelessWidget {
  const Twitter({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      theme: ThemeData(
          primaryColor: Colors.white,
          iconTheme:
              IconThemeData(color: new Color.fromRGBO(56, 161, 243, 1.0)),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: new Color.fromRGBO(56, 161, 243, 1.0)),
          //primarySwatch: Colors.blue,
          ),
      home: Home(),
    );
  }
}
