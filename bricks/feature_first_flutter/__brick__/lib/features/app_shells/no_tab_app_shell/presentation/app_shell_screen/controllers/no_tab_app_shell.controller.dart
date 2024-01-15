import 'package:flutter/material.dart';
import 'package:get/get.dart';




class NoTabAppShellController extends GetxController with GetSingleTickerProviderStateMixin {
 // final List<Tab> tabs = ViewProviders.tabBarProvider.getTabBarTabs;
 // final List<Widget> views = ViewProviders.tabBarProvider.getTabBarViews;

  late TabController tabController;


  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
