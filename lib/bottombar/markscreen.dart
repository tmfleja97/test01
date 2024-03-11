import 'package:flutter/material.dart';

class Markscreen extends StatefulWidget {
  const Markscreen({super.key});

  @override
  State<Markscreen> createState() => _MarkscreenState();
}

class _MarkscreenState extends State<Markscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("즐겨찾기 화면 입니다.")),
    );
  }
}
