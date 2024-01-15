import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../infrastructure/feature/features/app_bar_action_attachable.dart';
import '../../../utils/dependency_locator.dart';
import '../../user_local_settings/domain/repositories/user_local_settings.repository.dart';
import '../presentation/components/theme_toggle_switch.dart';
import '../domain/repositories/themes_repository.dart';
import 'repositories/app_default_themes.repository.dart';

class ThemeBindings implements BindingsAppBarActionAttachable {
  @override
  Future<void> bind() async {
    Get.lazyPut<ThemesRepository>(() => AppDefaultThemesRepository());
  }

  @override
  List<Widget> Function() get appbarActions => () => [
        ThemeToggleSwitch(
          DependencyLocator.locate<UserLocalSettingsRepository>(),
          DependencyLocator.locate<ThemesRepository>(),
        )
      ];
}
