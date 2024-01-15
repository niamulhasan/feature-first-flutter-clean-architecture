import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/if_found.dart';
import '../../../user_local_settings/domain/repositories/user_local_settings.repository.dart';
import '../../domain/repositories/themes_repository.dart';

class ThemeToggleSwitch extends StatelessWidget {
  final UserLocalSettingsRepository? _settingsRepository;
  final ThemesRepository? _themeRepository;

  const ThemeToggleSwitch(this._settingsRepository, this._themeRepository,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        Get.changeThemeMode(
          Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
        );
        ifFound(
          [_settingsRepository, _themeRepository],
          () {
            _settingsRepository!.saveSettings(
              SettingName.theme,
              Get.isDarkMode
                  ? _themeRepository!.lightTheme.name
                  : _themeRepository!.darkTheme.name,
            );
          },
        );
      },
      icon: Icon(
        context.isDarkMode ? Icons.light_mode : Icons.dark_mode,
        color: Get.textTheme.bodyLarge!.color,
      ),
    );
  }
}
