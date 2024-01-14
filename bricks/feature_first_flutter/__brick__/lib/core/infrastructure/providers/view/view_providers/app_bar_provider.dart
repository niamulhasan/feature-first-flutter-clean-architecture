
import 'package:flutter/material.dart';

class AppBarViewProvider {
  static final AppBarViewProvider _singleton = AppBarViewProvider._internal();
  factory AppBarViewProvider() {
    return _singleton;
  }

  final List<Widget> _appbarActions = [];
  List<Widget> get getAppBarActions => _appbarActions;
  set attachAppbarActions(List<Widget> actions) {
    _appbarActions.addAll(actions);
  }

  AppBarViewProvider._internal();
}