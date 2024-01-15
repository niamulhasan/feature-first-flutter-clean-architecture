import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/domain/entities/app_tab_view.dart';
import 'controllers/home_tab.controller.dart';

class HomeTab implements AppTabView {
  const HomeTab();

  @override
  AppBottomBarItem get tab => const AppBottomBarItem(
        label: "Home",
        icon: Icons.home_outlined,
        activeIcon: Icons.home,
      );

  @override
  Widget get view => const _HomeTabView();

  @override
  int get order => 0;
}

class _HomeTabView extends GetView<HomeTabController> {
  const _HomeTabView();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              title: Text('Item $index'),
            ),
          ),
        )
      ],
    );
  }
}

