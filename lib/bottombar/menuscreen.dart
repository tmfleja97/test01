import 'package:flutter/material.dart';

class Menuscreen extends StatefulWidget {
  const Menuscreen({super.key});

  @override
  State<Menuscreen> createState() => _Menuscreen();
}

class _Menuscreen extends State<Menuscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("메뉴 화면 입니다.")),
    );
  }
}
