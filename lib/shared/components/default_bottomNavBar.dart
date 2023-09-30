import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class DefaultBottomNavBar extends StatelessWidget {
 final int selectedIndex;
 final void Function(int) onItemSelected;

 DefaultBottomNavBar({
   super.key,
   required this.selectedIndex,
   required this.onItemSelected,
 });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: BottomNavyBar(
        backgroundColor: Colors.grey[200],
        selectedIndex:selectedIndex,
        onItemSelected:onItemSelected,
        containerHeight: 70,
        iconSize: 30.0,
        items: [
          BottomNavyBarItem(
              icon: const Icon(
                Icons.home_outlined,
              ),
              title: const Text(
                'Home',
              ),
              textAlign: TextAlign.center),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
            title: const Text('My Cart', textAlign: TextAlign.center),
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.person_outlined,
            ),
            title: const Text('Profile', textAlign: TextAlign.center),
          ),
          BottomNavyBarItem(
            icon: const Icon(
              Icons.settings,
            ),
            title: const Text('Settings', textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
