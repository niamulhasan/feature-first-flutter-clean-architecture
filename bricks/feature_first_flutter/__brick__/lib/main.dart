import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'core/core_features/themes/domain/repositories/themes_repository.dart';
import 'core/core_features/translation/domain/repositories/app_translations_repository.dart';
import 'core/core_features/user_local_settings/domain/repositories/user_local_settings.repository.dart';
import 'core/utils/dependency_locator.dart';
import 'core/utils/if_found.dart';
import 'init.dart';

import 'core/infrastructure/navigation/navigation.dart';
import 'core/infrastructure/navigation/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  var initialRoute = await Routes.initialRoute;
  runApp(Main(
    initialRoute,
    DependencyLocator.locate<UserLocalSettingsRepository>(),
    DependencyLocator.locate<ThemesRepository>(),
    DependencyLocator.locate<AppTranslationsRepository>(),
  ));
}

class Main extends StatelessWidget {
  final String initialRoute;
  final UserLocalSettingsRepository? _settingsRepository;
  final ThemesRepository? _themeRepository;
  final AppTranslationsRepository? _appTranslationsRepository;

  const Main(this.initialRoute, this._settingsRepository, this._themeRepository,
      this._appTranslationsRepository,
      {super.key});

  ThemeMode get themeMode {
    return ifFound<ThemeMode>(
          [_settingsRepository, _themeRepository],
          () {
            return _settingsRepository!.getSettings(SettingName.theme) ==
                    _themeRepository!.darkTheme.name
                ? ThemeMode.dark
                : ThemeMode.light;
          },
        ) ??
        ThemeMode.system;
  }

  Locale? get locale {
    return ifFound([_settingsRepository], (){
      if (_settingsRepository!.getSettings(SettingName.locale) == null) {
        return Get.deviceLocale;
      }
      return Locale(_settingsRepository.getSettings(SettingName.locale)!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Nav.routes(),
      theme: _themeRepository?.lightTheme.themeData ?? ThemeData.light(),
      darkTheme: _themeRepository?.darkTheme.themeData ?? ThemeData.dark(),
      themeMode: themeMode,
      translations: _appTranslationsRepository?.getTranslations,
      locale: locale,
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
