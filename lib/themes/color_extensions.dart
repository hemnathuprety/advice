import 'package:flutter/material.dart';

extension ColorExtension on Color {
  /// Convert the color to a darken color based on the [percent]
  Color darken([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = 1 - percent / 100;
    return Color.fromARGB(
      alpha,
      (red * value).round(),
      (green * value).round(),
      (blue * value).round(),
    );
  }

  Color lighten([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = percent / 100;
    return Color.fromARGB(
      alpha,
      (red + ((255 - red) * value)).round(),
      (green + ((255 - green) * value)).round(),
      (blue + ((255 - blue) * value)).round(),
    );
  }

  Color avg(Color other) {
    final red = (this.red + other.red) ~/ 2;
    final green = (this.green + other.green) ~/ 2;
    final blue = (this.blue + other.blue) ~/ 2;
    final alpha = (this.alpha + other.alpha) ~/ 2;
    return Color.fromARGB(alpha, red, green, blue);
  }
}

class AppColors {
  static const Color primary = surfaceColor;

  //Primary
  static const Color surfaceColor = Color(0xFF26A37B);
  static const Color surfaceColorLight = Color(0xFFB1E9D0);
  static const Color surfaceColorDark = Color(0xFF136951);

  static const Color borderColor = Color(0xFF26A37B);
  static const Color borderColorLight = Color(0xFFB1E9D0);
  static const Color borderColorDark = Color(0xFF125342);

  static const Color contentHeadingColor = Color(0xFF136951);
  static const Color contentSubtitleColor = Color(0xFF26A37B);

  //Secondary
  static const Color surfaceSecondaryColor = Color(0xFF226CD7);
  static const Color surfaceSecondaryColorLight = Color(0xFFA7C4EF);
  static const Color surfaceSecondaryColorDark = Color(0xFF144181);

  static const Color borderSecondaryColor = Color(0xFF226CD7);
  static const Color borderSecondaryColorLight = Color(0xFFA7C4EF);
  static const Color borderSecondaryColorDark = Color(0xFF0E2B56);

  static const Color secondaryHeadingColor = Color(0xFF144181);
  static const Color secondarySubtitleColor = Color(0xFF226CD7);

  //Warning
  static const Color warningColor = Color(0xFFE35163);
  static const Color warningColorLight = Color(0xFFEE97A1);
  static const Color warningColorDark = Color(0xFF88313B);

  static const Color borderWarningColor = Color(0xFFE35163);
  static const Color borderWarningColorLight = Color(0xFFE35163);
  static const Color borderWarningColorDark = Color(0xFF5B2028);

  static const Color contentWarningHeadingColor = Color(0xFF88313B);
  static const Color contentWarningSubtitleColor = Color(0xFFE35163);

  //Neutral
  static const Color surfaceNeutralColor = Color(0xFFF6F6F6);
  static const Color surfaceNeutralColorLight = Color(0xFFF7F8F8);
  static const Color surfaceNeutralColorDark = Color(0xFFC3C3C3);

  static const Color borderNeutralColor = Color(0xFF797575);
  static const Color borderNeutralColorLight = Color(0xFFF0F0F0);
  static const Color borderNeutralColorDark = Color(0xFF535151);

  static const Color primaryTextColor = Color(0xFF222222);
  static const Color primaryTextColorLight = Color(0xFFFCFBFB);
  static const Color primaryTextHeadingColor = Color(0xFF333333);
  static const Color primaryTextSubtitleColor = Color(0xFF454545);
  static const Color primaryTextCaptionColor = Color(0xFF535151);
  static const Color primaryTextDisabledColor = Color(0xFF797575);
  static const Color primaryTextPlaceholderColor = Color(0xFFC3C3C3);

  static const Color contentColorBlack = Colors.black;
  static const Color contentColorWhite = Colors.white;

  static const Color contentColorIndigo = Color(0xFF2c387e);
  static const Color contentColorYellow = Color(0xFFFFC300);
  static const Color contentColorOrange = Color(0xFFFF683B);
  static const Color contentColorDeepOrange = Color(0xFFb23c17);
  static const Color contentColorGreen = Color(0xFF3BFF49);
  static const Color contentColorTeal = Color(0xFF00695f);
  static const Color contentColorPurple = Color(0xFF6E1BFF);
  static const Color contentColorDeepPurple = Color(0xFF482880);
  static const Color contentColorPink = Color(0xFFFF3AF2);
}
