import 'package:flutter/cupertino.dart';
import '../feature.binding.dart';

abstract class BindingsAppBarActionAttachable extends FeatureBinding {
  List<Widget> Function() get appbarActions;
}
