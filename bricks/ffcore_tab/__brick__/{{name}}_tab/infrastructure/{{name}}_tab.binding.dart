
import 'package:get/get.dart';
import '../../../core/interfaces/bindings/feature/features/tab_bar_attachable.dart';
import '../../../core/providers/view/view_providers/tab_bar/app_tab_view.dart';
import '../presentation/controllers/settings_tab.controller.dart';
import '../presentation/settings.tab.dart';

class {{name.pascalCase()}}Bindings implements BindingsTabBarAttachable {
  @override
  Future<void> bind() async {
    Get.lazyPut<{{name.pascalCase()}}TabController>(() => {{name.pascalCase()}}TabController());
  }

  @override
  AppTabView tabView = const {{name.pascalCase()}}Tab();
}
