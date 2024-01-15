import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../core/infrastructure/providers/view/view.providers.dart';
import '../../../../../../core/domain/entities/app_tab_view.dart';




class TabbedAppShellController extends GetxController with GetSingleTickerProviderStateMixin {
 final List<AppBottomBarItem> tabs = ViewProviders.tabBarProvider.getTabBarTabs;
 final List<Widget> views = ViewProviders.tabBarProvider.getTabBarViews;

  late TabController tabController;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: tabs.length, vsync: this);
    tabController.addListener(() {
      _selectedTabIndex.value = tabController.index;
    });
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  final _selectedTabIndex = 0.obs;
  int get selectedTabIndex => _selectedTabIndex.value;

  void changeTabIndex(int index) {
    _selectedTabIndex.value = index;
    tabController.animateTo(index);
  }
}
