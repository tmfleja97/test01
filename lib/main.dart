import 'package:flutter/material.dart';
import 'package:test05/landingpage.dart';
import 'package:get/get.dart';
import 'package:test05/mainpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mainpage(),
    );
  }
}


