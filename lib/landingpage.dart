import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test05/mainpage.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {

  @override
  void initState() {
      Timer(Duration(seconds: 3), () {
        Get.offAll(Mainpage());
      });
  // TODO: implement initState
  super.initState();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/image/flower.jpg', fit: BoxFit.contain,)
          ),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}
