


import 'view_providers/home_view_provider.dart';
import 'view_providers/tab_bar_view_provider.dart';
import 'view_providers/app_bar_provider.dart';

abstract class ViewProviders {
  static final AppBarViewProvider appBarProvider = AppBarViewProvider();
  static final TabBarViewProvider tabBarProvider = TabBarViewProvider();
  static final HomeViewProvider homeViewProvider = HomeViewProvider();
}

