import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../infrastructure/feature/features/app_bar_action_attachable.dart';
import '../../utils/dependency_locator.dart';
import '../user_local_settings/domain/repositories/user_local_settings.repository.dart';
import 'domain/repositories/app_translations_repository.dart';
import 'infrastructure/repositories/bangla_english_translation_repository.dart';
import 'presentation/components/language_switch_button.dart';

class TranslationsBindings implements BindingsAppBarActionAttachable {
  @override
  Future<void> bind() async {
    Get.lazyPut<AppTranslationsRepository>(
        () => BanglaEnglishTranslationRepository());
  }

  @override
  List<Widget> Function() get appbarActions => () => [
        LanguageSwitchButton(
          DependencyLocator.locate<UserLocalSettingsRepository>(),
        ),
      ];
}
