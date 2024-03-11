import 'package:flutter/material.dart';

class Myscreen extends StatefulWidget {
  const Myscreen({super.key});

  @override
  State<Myscreen> createState() => _Myscreen();
}

class _Myscreen extends State<Myscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("내 정보 화면 입니다.")),
    );
  }
}
