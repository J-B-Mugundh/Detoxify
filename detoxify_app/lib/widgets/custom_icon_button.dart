import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  borderRadius: BorderRadius.circular(22.h),
                  border: Border.all(
                    color: appTheme.gray30002,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90001,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue800,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red300,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal400,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple200,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(8.h),
      );
  static BoxDecoration get fillGrayTL22 => BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillGrayTL16 => BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray90002,
        borderRadius: BorderRadius.circular(22.h),
      );
}
