import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../domain/entities/config.dart';
import '../feature/feature.binding.dart';
import '../feature/features/app_bar_action_attachable.dart';
import '../feature/features/home_view_section_attachable.dart';
import '../feature/features/page_route_attachable.dart';
import '../feature/features/tab_bar_attachable.dart';
import '../providers/view/view.providers.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;

  const EnvironmentsBadge({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes() {
    return Features.features;
  }
}

class Features {
  static List<GetPage> features = [];
  static final Features _singleton = Features._internal();

  factory Features() {
    return _singleton;
  }

  Features._internal();

  static void _attachPages(List<GetPage> feature) {
    features.addAll(feature);
  }

  static Future<void> bindFeatureBindings(FeatureBinding binding){
    return binding.bind();
  }

  static Future<void> bindFeatureProviders(FeatureBinding binding)async {

    if (binding is BindingsAppBarActionAttachable) {
      BindingsAppBarActionAttachable appBarActionAttachable = binding;
      ViewProviders.appBarProvider.attachAppbarActions =
          appBarActionAttachable.appbarActions();
    }

    if (binding is BindingsPageRouteAttachable) {
      BindingsPageRouteAttachable pageRouteAttachable = binding;
      Features._attachPages(pageRouteAttachable.pageRoutes);
    }

    if (binding is BindingsTabBarAttachable) {
      BindingsTabBarAttachable tabBarAttachable = binding;
      ViewProviders.tabBarProvider.attachTabBar(
        {tabBarAttachable.tabView.tab: tabBarAttachable.tabView.view},
        tabBarAttachable.tabView.order,
      );
    }

    if (binding is BindingsHomeViewSectionAttachable) {
      BindingsHomeViewSectionAttachable homeViewSectionAttachable = binding;
      ViewProviders.homeViewProvider.attachView(
        homeViewSectionAttachable.homeViewSection.view,
        homeViewSectionAttachable.homeViewSection.index,
      );
    }
  }

  static Future<void> attach(List<FeatureBinding> featuresBindings) async {
    for (var binding in featuresBindings) {
      await Features.bindFeatureBindings(binding);
    }
    for (var binding in featuresBindings) {
      await Features.bindFeatureProviders(binding);
    }
  }
}
