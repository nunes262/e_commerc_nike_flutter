import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MayBottomNavBar extends StatelessWidget {
  final ValueChanged<int>? onTabChange;
  const MayBottomNavBar({Key? key, this.onTabChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: Colors.grey,
          activeColor: Color.fromARGB(255, 107, 107, 107),
          tabBackgroundColor: Color.fromARGB(255, 230, 230, 230),
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          tabBorderRadius: 16,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',
            ),
          ]),
    );
  }
}
