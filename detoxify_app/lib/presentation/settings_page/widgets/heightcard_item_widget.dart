import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeightcardItemWidget extends StatelessWidget {
  const HeightcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray90011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      width: 95.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            "180cm",
            style: CustomTextStyles.titleSmallIndigoA100,
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "Height",
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
