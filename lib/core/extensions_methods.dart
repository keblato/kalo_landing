import 'package:flutter/material.dart';

extension MediaQueryDataExtension on MediaQueryData {
  bool get isMobile => size.width <= 580;
  bool get isTablet => size.width > 580 && size.width <= 1024;
}
