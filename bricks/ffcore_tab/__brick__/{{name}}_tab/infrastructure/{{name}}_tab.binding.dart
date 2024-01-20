
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../core/domain/entities/app_bottom_bar_item.dart';
import '../../../core/domain/entities/app_tab_view.dart';
import '../../../core/infrastructure/feature/features/tab_bar_attachable.dart';
import '../presentation/{{name.snakeCase()}}.tab.dart';
import '../presentation/controllers/{{name.snakeCase()}}_tab.controller.dart';

class {{name.pascalCase()}}Bindings implements BindingsTabBarAttachable {
  @override
  Future<void> bind() async {
    Get.lazyPut<{{name.pascalCase()}}TabController>(() => {{name.pascalCase()}}TabController());
  }

  @override
  AppTabView<AppBottomBarItem, Widget> tabView = const {{name.pascalCase()}}Tab();
}
