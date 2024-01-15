import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../domain/entities/app_app_bar.dart';
import 'controllers/tabbed_app_shell.controller.dart';

class TabbedAppShellScreen extends GetView<TabbedAppShellController> {
  final AppAppBar appAppBar;

  const TabbedAppShellScreen({super.key, required this.appAppBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar,
      // bottomNavigationBar: TabBar(
      //   controller: controller.tabController,
      //   tabs: controller.tabs,
      // ),
      bottomNavigationBar: Obx(
        () => SalomonBottomBar(
          currentIndex: controller.selectedTabIndex,
          onTap: (index) => controller.changeTabIndex(index),
          items: controller.tabs
              .map((tab) => SalomonBottomBarItem(
                    icon: Icon(
                      tab.icon,
                      color: Theme.of(context).textTheme.titleSmall?.color,
                    ),
                    title: Text(
                      tab.label,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    activeIcon: Icon(
                      tab.activeIcon,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ))
              .toList(),
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: controller.views,
      ),
    );
  }
}
