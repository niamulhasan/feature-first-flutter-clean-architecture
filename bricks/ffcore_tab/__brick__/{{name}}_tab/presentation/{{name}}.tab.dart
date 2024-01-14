
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../core/providers/view/view_providers/tab_bar/app_tab_view.dart';
import 'controllers/settings_tab.controller.dart';

class {{name.pascalCase()}}Tab implements AppTabView {

  const {{name.pascalCase()}}Tab();

  @override
  AppBottomBarItem get tab => const AppBottomBarItem(label: '{{name.pascalCase()}}', icon: Icons.home, activeIcon: Icons.home);

  @override
  Widget get view => const _{{name.pascalCase()}}TabView();

  @override
  // TODO: implement order
  int get order => 3;
}

class _{{name.pascalCase()}}TabView extends GetView<{{name.pascalCase()}}TabController> {
  const _{{name.pascalCase()}}TabView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('{{name.pascalCase()}} TabView'),
    );
  }
}
