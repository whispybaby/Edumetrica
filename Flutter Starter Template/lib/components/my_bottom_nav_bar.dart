import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

/*

B O T T O M N A V B A R

This is the Bottom Navigation Bar from Google. 
It gives a sleek modern look and feel.
You can change up the style to fit your preference,
but I like this modern look with the nice little animations!

Here you can create your buttons that should correspond to the pages.

*/

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: GNav(
        color: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.grey.shade800,
        padding: const EdgeInsets.all(16),
        gap: 8,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ],
      ),
    );
  }
}
