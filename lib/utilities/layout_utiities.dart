import 'package:flutter/cupertino.dart';

class LayoutUtils {
  static Widget iconText(Icon iconsWidget, Text textWidget) {
    return Row(
      children: [iconsWidget, SizedBox(width: 5), textWidget],
    );
  }
}
