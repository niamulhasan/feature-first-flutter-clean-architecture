
import 'package:flutter/material.dart';
import '../../../../../core/core_features/themes/domain/entities/app.assets.dart';
import '../../domain/entities/app_app_bar.dart';

class FixedAppAppBar extends StatelessWidget implements AppAppBar {

  @override
  final String title;

  @override
  final List<Widget> actions;


  const FixedAppAppBar({super.key, required this.title, required this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(AppAssets.themed(context).logo, width: 120,),
      centerTitle: true,
      actions: actions,
      backgroundColor: Theme.of(context).primaryColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
