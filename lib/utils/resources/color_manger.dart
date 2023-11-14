import 'package:demop/utils/extensions/color_extensions.dart';
import 'package:flutter/material.dart';

class ColorManager {
  /// main
  static Color primaryDarkSwiss = ColorExtensions.fromHex("#90001E");
  static Color primarySwiss = ColorExtensions.fromHex("#BE0027");
  static Color pSpotDarkSwiss = ColorExtensions.fromHex("#EA1A44");
  static Color greenSwiss = ColorExtensions.fromHex("#39D98A");

  /// Gray
  static Color textBlack = ColorExtensions.fromHex("#000000");
  static Color black = ColorExtensions.fromHex("#060606");
  static Color black80 = ColorExtensions.fromHex("#525252");
  static Color black35 = ColorExtensions.fromHex("#A7A7A7");
  static Color black25 = ColorExtensions.fromHex("#C0C0C0");
  static Color black15 = ColorExtensions.fromHex("#DADADA");
  static Color black5 = ColorExtensions.fromHex("#F2F2F2");
  static Color white = ColorExtensions.fromHex("#FFFFFFFF");

  /// System
  static Color red = ColorExtensions.fromHex("#FF5C5C");
  static Color green = ColorExtensions.fromHex("#39D98A");
  static Color blue = ColorExtensions.fromHex("#5B8DEF");
  static Color orange = ColorExtensions.fromHex("#FF8800");
  static Color yellow = ColorExtensions.fromHex("#FFC400");
  static Color teal = ColorExtensions.fromHex("#73DFE7");

  ///Alert Colors
  static Color alertPrimary = ColorExtensions.fromHex("#CFE2FF");
  static Color alertSecondary = ColorExtensions.fromHex("#E2E3E5");
  static Color alertSuccess = ColorExtensions.fromHex("#D1E7DD");
  static Color alertDanger = ColorExtensions.fromHex("#F8D7DA");
  static Color alertWarning = ColorExtensions.fromHex("#FFF3CD");
  static Color alertInfo = ColorExtensions.fromHex("#CFF4FC");

  /// gradient colors

  static Gradient linearHeader = const LinearGradient(
      begin: Alignment(0.00, -1.00),
      end: Alignment(0, 1),
      colors: [Color(0xFF001D45), Color(0x99041730)]);

  static Gradient linearNavbar = const LinearGradient(
      begin: Alignment(0.00, -1.00),
      end: Alignment(0, 1),
      colors: [Color(0xB2031022), Color(0xFF031022)]);

  static Gradient linearBG = LinearGradient(
    begin: const Alignment(0.99, -0.14),
    end: const Alignment(-0.99, 0.14),
    colors: <Color>[
      ColorExtensions.fromHex("#05254F"),
      ColorExtensions.fromHex("#041E40"),
    ],
  );

  static Gradient linearILS = LinearGradient(
    begin: const Alignment(1.00, -0.02),
    end: const Alignment(-1, 0.02),
    colors: [
      ColorExtensions.fromHex("#FFC400"),
      ColorExtensions.fromHex("#FFE48A"),
      ColorExtensions.fromHex("#FFD549"),
      ColorExtensions.fromHex("#FFC400"),
      ColorExtensions.fromHex("#A88200"),
    ],
  );
  static Gradient linearTopFansContainer = const LinearGradient(
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: [Color(0xFF041730), Color(0x00041730)],
  );
  static Gradient linearILSLive = const LinearGradient(
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: [Color(0xFF041730), Color(0xFF05254F)],
  );
}
