import 'package:flutter/material.dart';
import 'package:topl_consensus_landing_page/constants/colors.dart';

/// The custom [TextStyle]s being used in the app.
class ToplTextStyles {
  ToplTextStyles._();
  static const TextStyle h1 = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: ToplColors.defaultText,
    letterSpacing: 1.42,
  );
  static const TextStyle h2 = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 34,
    fontWeight: FontWeight.bold,
    color: ToplColors.defaultText,
  );
  static const TextStyle h3 = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ToplColors.defaultText,
  );
  static const TextStyle h4 = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle body1 = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 16,
    color: ToplColors.defaultText,
  );
  static const TextStyle body1Bold = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 16,
    color: ToplColors.defaultText,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle body1Small = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 14,
    color: ToplColors.defaultText,
  );
  static const TextStyle commaDivider = TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 60,
    fontWeight: FontWeight.bold,
    color: ToplColors.defaultText,
    letterSpacing: 1.42,
  );
}
