import 'package:flutter/material.dart';
import 'package:detoxify_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber600,
      );
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001.withOpacity(0.11),
      );
  static BoxDecoration get fillBlack90001 => BoxDecoration(
        color: appTheme.black90001,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA200.withOpacity(0.05),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange400,
      );
  static BoxDecoration get fillDeeporange200 => BoxDecoration(
        color: appTheme.deepOrange200,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray10002 => BoxDecoration(
        color: appTheme.gray10002,
      );
  static BoxDecoration get fillGray10005 => BoxDecoration(
        color: appTheme.gray10005,
      );
  static BoxDecoration get fillGray10007 => BoxDecoration(
        color: appTheme.gray10007,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillLime => BoxDecoration(
        color: appTheme.lime900,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.25),
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple500,
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientDeepPurpleAToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 1),
          end: Alignment(-0.24, -0.31),
          colors: [
            appTheme.deepPurpleA100,
            appTheme.pink100,
          ],
        ),
      );
  static BoxDecoration get gradientDeepPurpleToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.deepPurple600,
            appTheme.blueGray900,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.5),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900011 => BoxDecoration(
        border: Border.all(
          color: appTheme.black90001.withOpacity(0.07),
          width: 1.h,
          strokeAlign: strokeAlignCenter,
        ),
      );
  static BoxDecoration get outlineBlack900012 => BoxDecoration(
        border: Border.all(
          color: appTheme.black90001.withOpacity(0.03),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900013 => BoxDecoration(
        color: appTheme.blue400.withOpacity(0.75),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900014 => BoxDecoration(
        color: appTheme.blue30001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900015 => BoxDecoration(
        color: appTheme.purple5001,
        border: Border.all(
          color: appTheme.black90001,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineBlack900016 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.5),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray200,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray90011 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGrayF => BoxDecoration(
        color: appTheme.gray10004,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray503f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineIndigoAC => BoxDecoration(
        border: Border.all(
          color: appTheme.indigoA1004c,
          width: 3.h,
        ),
      );
  static BoxDecoration get outlinePurple => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.purple50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePurple500 => BoxDecoration(
        border: Border.all(
          color: appTheme.purple500,
          width: 2.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlinePurple5001 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.purple5001,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );

  // Column decorations
  static BoxDecoration get column7 => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );
  static BorderRadius get circleBorder58 => BorderRadius.circular(
        58.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL15 => BorderRadius.only(
        topRight: Radius.circular(15.h),
        bottomLeft: Radius.circular(15.h),
        bottomRight: Radius.circular(15.h),
      );
  static BorderRadius get customBorderBL24 => BorderRadius.only(
        topRight: Radius.circular(24.h),
        bottomLeft: Radius.circular(24.h),
        bottomRight: Radius.circular(24.h),
      );
  static BorderRadius get customBorderBL48 => BorderRadius.only(
        bottomLeft: Radius.circular(48.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder33 => BorderRadius.circular(
        33.h,
      );
  static BorderRadius get roundedBorder37 => BorderRadius.circular(
        37.h,
      );
  static BorderRadius get roundedBorder42 => BorderRadius.circular(
        42.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
  static BorderRadius get roundedBorder87 => BorderRadius.circular(
        87.h,
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
