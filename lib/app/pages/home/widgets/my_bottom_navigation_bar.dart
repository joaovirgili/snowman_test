import 'package:flutter/material.dart';
import 'package:snowmanlabs/app/shared/constants/colors.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  var _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: MAIN_BLUE,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.star), title: Text("")),
        BottomNavigationBarItem(icon: Icon(Icons.map), title: Text("")),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("")),
      ],
    );
  }
}