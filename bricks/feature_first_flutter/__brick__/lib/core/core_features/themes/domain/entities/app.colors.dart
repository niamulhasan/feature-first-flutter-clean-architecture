import 'dart:ui';

abstract class AppColors {
  static final light = _LightColors();
  static final dark = _DarkColors();
  static final extra = _ExtraColors();
}

class _LightColors {
  final primaryColor = const Color(0xFFED1B24);
  final Color primaryBg = const Color(0xFF260304);
  final Color inputBg = const Color(0xFFE5E7EC);
  final Color primaryText = const Color(0xFF161622);
  final Color secondaryText = const Color(0xFF181A1F);
  final Color cardColor = const Color(0xFF7E1518);
  final Color bodyText = const Color(0xFF181A1F);
}

class _DarkColors {
  final primaryColor = const Color(0xFF7E181B);
  final Color primaryBg = const Color(0xFF260304);
  final Color inputBg = const Color(0xFF161622);
  final Color primaryText = const Color(0xFFFFFFFF);
  final Color secondaryText = const Color(0xFF95B1CE);
  final Color cardColor = const Color(0xFF501A1C);
  final Color bodyText = const Color(0xFFFFFFFF);
}

class _ExtraColors {
  final Color tileBlue = const Color(0xff17CEE7);
  final Color tileGreen = const Color(0xff99D7DB);
  final Color tileOrange = const Color(0xffEEC1C1);
  final Color tilePurple = const Color(0xffC7C1EE);
}