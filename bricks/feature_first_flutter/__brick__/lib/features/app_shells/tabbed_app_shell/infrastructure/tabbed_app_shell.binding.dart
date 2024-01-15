import 'package:get/get.dart';
import '../../../../core/constants/app_translation_strings.dart';
import '../../../../core/infrastructure/feature/features/page_route_attachable.dart';
import '../../../../core/infrastructure/navigation/routes.dart';
import '../../../../core/infrastructure/providers/view/view.providers.dart';
import '../presentation/app_shell_screen/controllers/tabbed_app_shell.controller.dart';
import '../presentation/app_shell_screen/tabbed_app_shell.screen.dart';
import 'components/fixed_app_bar.dart';

class TabbedAppShellBindings implements BindingsPageRouteAttachable {

  @override
  Future<void> bind() async {}

  @override
  List<GetPage> pageRoutes = [
      GetPage(
        name: Routes.HOME,
        page: () => TabbedAppShellScreen(
          appAppBar: FixedAppAppBar(
            title: AppTranslationStrings.appName,
            actions: ViewProviders.appBarProvider.getAppBarActions,
          ),
        ),
        binding: _HomeControllerBinding(),
      )
    ];
}

class _HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabbedAppShellController>(
      () => TabbedAppShellController(),
    );
  }
}
