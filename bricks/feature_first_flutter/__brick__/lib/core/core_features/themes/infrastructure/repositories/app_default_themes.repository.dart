
import 'package:flutter/material.dart';
import '../../domain/entities/app_theme.dart';
import '../../domain/repositories/themes_repository.dart';

class AppDefaultThemesRepository implements ThemesRepository {

  @override
  AppTheme get lightTheme => AppTheme(name: "Light Mode", themeData: ThemeData.light());

  @override
  AppTheme get darkTheme => AppTheme(name: "Dark Mode", themeData: ThemeData.dark());
}