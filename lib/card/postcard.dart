import 'dart:math';

import 'package:flutter/material.dart';

class Postcard extends StatefulWidget {

  int number;
  Postcard({required this.number});

  @override
  State<Postcard> createState() => _PostcardState();
}

class _PostcardState extends State<Postcard> {

  List<String> testImageList = [
    'https://image.dongascience.com/Photo/2023/07/a6e03b09c37312988aad4b5657ecbc75.jpeg',
    'https://www.fnnews.com/resource/media/image/2021/12/23/202112232132269156_l.jpg',
    'https://cdn.edujin.co.kr/news/photo/202301/41207_83558_282.jpg',
    'https://i.pinimg.com/originals/a5/68/34/a56834ece5eec8135f4479dcb5ea9df9.jpg',
    'https://www.sputnik.kr/article_img/202302/article_1675590095.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.white60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage('https://e7.pngegg.com/pngimages/798/436/png-clipart-computer-icons-user-profile-avatar-profile-heroes-black.png'),
                      ),
                      SizedBox(width: 5,),
                      Text('user1234')
                    ],
                ),
                Icon(Icons.subject),
              ],
            ),
          ),
          Container(
            child: Image.network(testImageList[Random().nextInt(testImageList.length)]),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.white24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(width: 7),
                      Icon(Icons.chat_outlined),
                      SizedBox(width: 7),
                      Icon(Icons.send)
                    ],
                ),
                Container(width: 60, child: Text(''),),
                Icon(Icons.bookmark_border)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: Colors.white70,
            child:  Text('좋아요 99개'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
            child: Center(child: Text('설명')),
          ),
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
            child: Center(child: Text('댓글')),
          ),
        ],
      ),
    );
  }
}
