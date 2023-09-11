import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../const/pallete.dart';

class BottomNavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: GNav(
          color: Colors.black,
          activeColor: Pallete.universecolor,
          tabBackgroundColor: Colors.grey.shade200,
          // tabActiveBorder: Border.all(color: Colors.amber),
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 20,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
              textColor: Pallete.universecolor,
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
              textColor: Pallete.universecolor,
            ),
            GButton(
              icon: Icons.favorite,
              text: ' Project',
              textColor: Pallete.universecolor,
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
              textColor: Pallete.universecolor,
            )
          ]),
    );
  }
}
