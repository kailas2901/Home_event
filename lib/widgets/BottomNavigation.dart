


import 'package:flutter/material.dart';
import 'package:home_event/colors/Colors.dart';
import 'package:home_event/colors/extensions.dart';
import 'package:home_event/pages/Calendar.dart';
import 'package:home_event/pages/Favourates.dart';
import 'package:home_event/pages/Home.dart';
import 'package:home_event/pages/Profile.dart';
import 'package:home_event/pages/Search.dart';

class   BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _bottomState();
}

class _bottomState extends State<BottomNav> {
  int _currentstate = 0;

  final pages = [
    Home(),
    Search(),
    Calendar(),
    Favourates(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NavBarColor.withOpacity(0.4),
      body: pages[_currentstate],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(

        ),
        child: BottomNavigationBar(
          elevation: 1,
          type: BottomNavigationBarType.fixed,
          backgroundColor: NavBarColor.withOpacity(0.4),
          selectedItemColor: IconRed.withOpacity(1),
          unselectedItemColor: Colors.white,
          currentIndex: _currentstate,
          onTap: (newIndex){
            setState(() {
              _currentstate = newIndex;
            });
          },
          items: const [

            BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle),label: ''),


          ],
        ),
      ),
    );
  }
}
