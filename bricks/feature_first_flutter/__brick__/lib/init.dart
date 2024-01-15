import 'core/core_features/themes/infrastructure/themes.binding.dart';
import 'core/core_features/translation/translations.binding.dart';
import 'core/core_features/user_local_settings/infrastructure/user_local_settings.binding.dart';
import 'core/infrastructure/feature/feature.binding.dart';
import 'core/infrastructure/navigation/navigation.dart';
import 'features/app_shells/tabbed_app_shell/infrastructure/tabbed_app_shell.binding.dart';
import 'features/home_tab/infrastructure/home_tab.binding.dart';
import 'features/settings_tab/infrastructure/settings_tab.binding.dart';


List<FeatureBinding> featuresBindings = [
  TabbedAppShellBindings(),
  UserLocalSettingsBindings(),
  ThemeBindings(),
  TranslationsBindings(),
  HomeTabBindings(),
  SettingsBindings(),
];


Future<void> init() async {
  await Features.attach(featuresBindings);
}
