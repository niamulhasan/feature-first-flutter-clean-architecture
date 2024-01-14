import 'package:flutter/material.dart';

class HomeViewProvider {
  static final HomeViewProvider _singleton = HomeViewProvider._internal();

  factory HomeViewProvider() {
    return _singleton;
  }


  final List<Map<int, Widget>> _indexedViewList = [];

  List<Widget> get getViews {
    _sortViews();
    return _indexedViewList.map((e) => e.values.first).toList();
  }

  void attachView(Widget view, int index) {
    _indexedViewList.add({index: view});
  }

  void _sortViews() {
    // _indexTabsMapList.sort((a, b) => a.keys.first.compareTo(b.keys.first));
    _indexedViewList.sort((a, b) => a.keys.first.compareTo(b.keys.first));
  }

  HomeViewProvider._internal();
}
