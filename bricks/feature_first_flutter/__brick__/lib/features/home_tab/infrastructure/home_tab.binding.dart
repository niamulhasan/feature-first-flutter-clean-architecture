import 'package:get/get.dart';
import '../../../core/infrastructure/feature/features/tab_bar_attachable.dart';
import '../../../core/domain/entities/app_tab_view.dart';
import '../presentation/controllers/home_tab.controller.dart';
import '../presentation/home.tab.dart';


class HomeTabBindings implements BindingsTabBarAttachable {

  @override
  Future<void> bind() async {
    Get.lazyPut<HomeTabController>(() => HomeTabController());
  }

  @override
  AppTabView tabView = const HomeTab();


}

// class _HomeControllerBinding extends Bindings {
//   @override
//   void dependencies() {
//     Get.lazyPut<TabsController>(
//       () => TabsController(),
//     );
//   }
// }
