import 'package:get/get.dart';
import '../../../infrastructure/feature/feature.binding.dart';
import '../domain/repositories/user_local_settings.repository.dart';
import 'repositories/shared_preference_settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';


class UserLocalSettingsBindings implements FeatureBinding {

  @override
  Future<void> bind() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Get.lazyPut<UserLocalSettingsRepository>(
        () => SharedPreferenceSettingsRepository(sharedPreferences),
        fenix: true);
  }
}
