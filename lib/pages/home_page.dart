import 'package:collabor8mesh/components/bottom_nabar.dart';
import 'package:collabor8mesh/components/drawer.dart';
import 'package:collabor8mesh/pages/like_page.dart';
import 'package:collabor8mesh/pages/profile_page.dart';
import 'package:collabor8mesh/pages/search_page.dart';
import 'package:flutter/material.dart';

import 'dashboard_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//this selected index is to control the bottom navbar
  int _selectedIndex = 0;

  //this method will update our selected index when user tabs on the bottom bar

  void navigateBottom(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const DashboardPage(),
    const SearchPage(),
    const LikePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottom(index),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ));
        }),
      ),
      drawer: const DrawerPage(),
      body: _pages[_selectedIndex],
    );
  }
}
