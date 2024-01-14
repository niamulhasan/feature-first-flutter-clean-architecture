import '../../../constants/app_translation_strings.dart';
import '../domain/entities/app_translated_data.dart';
import 'app_translation.dart';

abstract class AppTranslationData {
  static List<AppTranslatedData> data = [
    const AppTranslatedData(
      key: AppTranslationStrings.appName,
      en: 'FFF Dummy App',
      bn: 'FFF ডামি অ্যাপ',
    ),
    const AppTranslatedData(
      key: AppTranslationStrings.translation,
      en: 'Translation',
      bn: 'অনুবাদ',
    ),
    const AppTranslatedData(
      key: AppTranslationStrings.language,
      en: 'Language',
      bn: 'ভাষা',
    ),
    const AppTranslatedData(
      key: AppTranslationStrings.english,
      en: 'English',
      bn: 'ইংরেজি',
    ),
    const AppTranslatedData(
      key: AppTranslationStrings.bangla,
      en: 'Bangla',
      bn: 'বাংলা',
    ),
  ];
}