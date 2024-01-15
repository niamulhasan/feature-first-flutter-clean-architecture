import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../core/domain/entities/app_tab_view.dart';
import 'controllers/settings_tab.controller.dart';

class SettingsTab implements AppTabView {
  const SettingsTab();

  @override
  AppBottomBarItem get tab => const AppBottomBarItem(
        label: 'Settings',
        icon: Icons.settings_outlined,
        activeIcon: Icons.settings,
      );

  @override
  Widget get view => const _SettingsTabView();

  @override
  int get order => 3;
}

class _SettingsTabView extends GetView<SettingsTabController> {
  const _SettingsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Settings TabView'),
    );
  }
}
