import 'package:flutter/material.dart';
import 'package:nti/screens/app_screens/bookmark_screen.dart';
import 'package:nti/screens/app_screens/profile_screen.dart';
import 'package:nti/screens/app_screens/search_screen.dart';
import 'package:nti/screens/home_screen.dart';

import '../shared/styles/colors.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0 ;
  List<Widget> screens=[
    HomeScreen(),
    SearchScreen(),
    BookmarkScreen(),
    ProfileScreen(),
  ];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: black,
        unselectedItemColor: greyD,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmarks), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      appBar: AppBar(),
      body: screens[currentIndex],
    );
  }
}
