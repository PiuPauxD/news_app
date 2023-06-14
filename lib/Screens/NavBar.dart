import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:news_app/Screens/Home_Screen.dart';
import 'package:news_app/Screens/Save_Screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List screen = [
    const HomePage(),
    const SaveScreen(),
    const SaveScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 17, 17),
      body: screen[currentIndex],
      bottomNavigationBar: CircleNavBar(
        activeIndex: currentIndex,
        onTap: onTap,
        activeIcons: const [
          Icon(Icons.home_outlined, color: Colors.black),
          Icon(Icons.search, color: Colors.black),
          Icon(Icons.bookmark_border_outlined, color: Colors.black),
        ],
        inactiveIcons: const [
          Text(
            'Home',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 242, 197),
              fontSize: 18,
            ),
          ),
          Text(
            'Search',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 242, 197),
              fontSize: 18,
            ),
          ),
          Text(
            'Saved',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 242, 197),
              fontSize: 18,
            ),
          ),
        ],
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 60,
        circleWidth: 60,
        circleColor: const Color.fromARGB(255, 219, 203, 147),
        color: const Color.fromARGB(255, 74, 72, 72),
        shadowColor: const Color.fromARGB(255, 109, 105, 105),
        circleShadowColor: const Color.fromARGB(255, 238, 227, 188),
        elevation: 6,
        cornerRadius: BorderRadius.circular(30),
      ),
    );
  }
}
