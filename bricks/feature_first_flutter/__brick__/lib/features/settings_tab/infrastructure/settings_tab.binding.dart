
import 'package:get/get.dart';
import '../../../core/infrastructure/feature/features/tab_bar_attachable.dart';
import '../../../core/domain/entities/app_tab_view.dart';
import '../presentation/controllers/settings_tab.controller.dart';
import '../presentation/settings.tab.dart';

class SettingsBindings implements BindingsTabBarAttachable {
  @override
  Future<void> bind() async {
    Get.lazyPut<SettingsTabController>(() => SettingsTabController());
  }

  @override
  AppTabView tabView = const SettingsTab();
}
