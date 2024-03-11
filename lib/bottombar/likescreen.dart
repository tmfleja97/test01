import 'package:flutter/material.dart';

class Likescreen extends StatefulWidget {
  const Likescreen({super.key});

  @override
  State<Likescreen> createState() => _LikescreenState();
}

class _LikescreenState extends State<Likescreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("좋아요 화면 입니다.")),
    );
  }
}
