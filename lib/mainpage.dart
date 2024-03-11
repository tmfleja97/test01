import 'package:flutter/material.dart';
import 'package:test05/bottombar/homescreen.dart';
import 'package:test05/bottombar/likescreen.dart';
import 'package:test05/bottombar/markscreen.dart';
import 'package:test05/bottombar/menuscreen.dart';
import 'package:test05/bottombar/myscreen.dart';

class Mainpage extends StatefulWidget {

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      label: '좋아요',
      icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      label: '즐겨찾기',
      icon: Icon(Icons.star),
    ),
    BottomNavigationBarItem(
      label: '홈',
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: '내 정보',
      icon: Icon(Icons.people),
    ),
    BottomNavigationBarItem(
      label: '메뉴',
      icon: Icon(Icons.apps_outlined),
    ),
  ];

  List pages = [
    Likescreen(),
    Markscreen(),
    Homescreen(),
    Myscreen(),
    Menuscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App_Test', style: TextStyle(fontFamily: 'Parisienne', fontSize: 30, color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,

        showSelectedLabels: false,
        showUnselectedLabels: false,

        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }
}
