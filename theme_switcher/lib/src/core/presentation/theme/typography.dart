import 'package:flutter/widgets.dart';
import 'package:theme_switcher/src/core/presentation/theme/colors.dart';

class AppTypography {
  const AppTypography._();

  static const fontFamily = 'Poppins';

  //* Font Sizes
  // Title font sizes
  static const smallTitleFontSize = 20.0;
  static const mediumTitleFontSize = 24.0;
  static const largeTitleFontSize = 28.0;

  // Body font sizes
  static const smallBodyFontSize = 14.0;
  static const mediumBodyFontSize = 16.0;
  static const largeBodyFontSize = 18.0;

  // Caption font size
  static const captionFontSize = 12.0;

  //* Text Styles
  // Title text styles
  static const titleSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: smallTitleFontSize,
    fontWeight: FontWeight.w600,
    color: AppColors.lightThemePrimaryFontColor,
  );

  static const titleMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: mediumTitleFontSize,
    fontWeight: FontWeight.w600,
    color: AppColors.lightThemePrimaryFontColor,
  );

  static const titleLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: largeTitleFontSize,
    fontWeight: FontWeight.bold,
    color: AppColors.lightThemePrimaryFontColor,
  );

  // Body text styles
  static const bodySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: smallBodyFontSize,
    color: AppColors.lightThemePrimaryFontColor,
  );

  static const bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: mediumBodyFontSize,
    color: AppColors.lightThemePrimaryFontColor,
  );

  static const bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: largeBodyFontSize,
    color: AppColors.lightThemePrimaryFontColor,
  );

  // Caption text styles
  static const caption = TextStyle(
    fontFamily: fontFamily,
    fontSize: captionFontSize,
    color: AppColors.lightThemePrimaryFontColor,
  );
}
