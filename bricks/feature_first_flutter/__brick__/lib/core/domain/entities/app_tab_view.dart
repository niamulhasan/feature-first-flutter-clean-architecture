import 'package:flutter/material.dart';

abstract class AppTabView {
  AppBottomBarItem get tab;
  Widget get view;
  int get order;
}

class AppBottomBarItem {
  final String label;
  final IconData icon;
  final IconData activeIcon;
  final Widget? child;

  const AppBottomBarItem({
    required this.label,
    required this.icon,
    required this.activeIcon,
    this.child,
  });
}
