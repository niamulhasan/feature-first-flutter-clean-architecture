
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'controllers/{{name.snakeCase()}}_tab.controller.dart';
import '../../../core/domain/entities/app_bottom_bar_item.dart';
import '../../../core/domain/entities/app_tab_view.dart';


class {{name.pascalCase()}}Tab implements AppTabView<AppBottomBarItem, Widget> {

  const {{name.pascalCase()}}Tab();

  @override
  AppBottomBarItem get tab => const AppBottomBarItem(label: '{{name.pascalCase()}}', icon: Icons.home, activeIcon: Icons.home);

  @override
  Widget get view => const _{{name.pascalCase()}}TabView();

  @override
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
