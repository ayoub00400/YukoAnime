import 'package:flutter/material.dart';

class CustomBottomNavBarItem {
  final IconData icon;
  final IconData activeIcon;
  final Color activeIconColor;
  final String label;
  const CustomBottomNavBarItem(
      {required this.icon, required this.activeIcon, required this.activeIconColor, this.label = ''});

  build(BuildContext context) {
    return BottomNavigationBarItem(
      activeIcon: Icon(
        activeIcon,
        color: activeIconColor,
      ),
      icon: Icon(icon),
      label: label,
    );
  }
}
