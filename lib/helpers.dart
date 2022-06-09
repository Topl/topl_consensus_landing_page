import 'package:flutter/material.dart';

bool isExtraLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 1440;
}

bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 1200 && MediaQuery.of(context).size.width <= 1440;
}

bool isMediumScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= 800 && MediaQuery.of(context).size.width <= 1200;
}

bool isSmallScreen(BuildContext context) {
  return MediaQuery.of(context).size.width < 800;
}
