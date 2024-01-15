import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../../../core/infrastructure/providers/view/view.providers.dart';
import '../../domain/entities/app_app_bar.dart';
import 'controllers/no_tab_app_shell.controller.dart';

class NoTabAppShellScreen extends GetView<NoTabAppShellController> {
  final AppAppBar appAppBar;

  const NoTabAppShellScreen({super.key, required this.appAppBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar,
      body: CustomScrollView(slivers: ViewProviders.homeViewProvider.getViews),
    );
  }
}
