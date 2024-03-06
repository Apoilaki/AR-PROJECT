import 'package:flutter/material.dart';
import 'package:trial_v3/app_essentials/app_new/size_utils.dart';
import 'package:trial_v3/app_essentials/app_new/theme_helper.dart';
import 'package:trial_v3/app_essentials/utils/size_Utils.dart';

class App_Decoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA200,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
      );

  // Outline decorations
  static BoxDecoration get outlineBlue => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: appTheme.blue50,
          //width: 1.h,
          width: getHorizontalSize(1)
        ),
      );
  static BoxDecoration get outlineBlue50 => BoxDecoration(
        border: Border.all(
          color: appTheme.blue50,
          //width: 1.h,
          width: getHorizontalSize(1)
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(1),
          //width: 1.h,
          width: getHorizontalSize(1)
        ),
      );
}

class BorderRadiusStyle_ {
  // Circle borders
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        //12.h,
    getHorizontalSize(12)
      );
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        //24.h,
    getHorizontalSize(24)
      );
  static BorderRadius get circleBorder36 => BorderRadius.circular(
        //36.h,
    getHorizontalSize(36)
      );

  // Rounded borders
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        //5.h,
    getHorizontalSize(5)
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        //8.h,
    getHorizontalSize(8)
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
