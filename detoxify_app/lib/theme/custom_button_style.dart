import 'dart:ui';
import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA200.withOpacity(0.05),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get fillPurple => ElevatedButton.styleFrom(
        backgroundColor: appTheme.purple300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
  static ButtonStyle get fillYellow => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientIndigoAToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(15.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(-0.24, 0),
          colors: [
            appTheme.indigoA100,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToPrimaryTL12Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(-0.24, 0),
          colors: [
            appTheme.indigoA100,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientIndigoAToPrimaryTL30Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA1004c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(-0.24, 0),
          colors: [
            appTheme.indigoA100,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientTealAToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.indigoA1004c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(1.0, 1),
          end: Alignment(-0.24, 0),
          colors: [
            appTheme.tealA400,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlackTL6 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
        shadowColor: appTheme.black90001.withOpacity(0.25),
        elevation: 4,
      );
  static ButtonStyle get outlineBlueA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
        shadowColor: appTheme.blueA200.withOpacity(0.25),
        elevation: 4,
      );
  static ButtonStyle get outlineBlueGray => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        side: BorderSide(
          color: appTheme.blueGray50,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get outlineWhiteAF => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
        shadowColor: appTheme.whiteA7003f,
        elevation: 3,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
