import 'package:flutter/material.dart';

import '../../../../domain/entities/app_tab_view.dart';


class TabBarViewProvider {
  static final TabBarViewProvider _singleton = TabBarViewProvider._internal();

  factory TabBarViewProvider() {
    return _singleton;
  }

  // final List<Map<Tab, Widget>> _tabs = [];

  final List<Map<int, Map<AppBottomBarItem, Widget>>> _indexTabsMapList = [];

  List<AppBottomBarItem> get getTabBarTabs {
    _sortTabs();
    return _indexTabsMapList.map((e) => e.values.first.keys.first).toList();
  }

  List<Widget> get getTabBarViews {
    return _indexTabsMapList.map((e) => e.values.first.values.first).toList();
  }

  void attachTabBar(Map<AppBottomBarItem, Widget> tab, int index) {
    // _tabs.add(tab);
    _indexTabsMapList.add({index: tab});
  }

  void _sortTabs() {
    _indexTabsMapList.sort((a, b) => a.keys.first.compareTo(b.keys.first));
  }

  TabBarViewProvider._internal();
}
