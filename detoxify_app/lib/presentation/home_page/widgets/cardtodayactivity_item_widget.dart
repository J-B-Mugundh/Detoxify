import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardtodayactivityItemWidget extends StatelessWidget {
  const CardtodayactivityItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.h),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame4,
            height: 71.v,
            width: 101.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 15.v,
              bottom: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yoga Class",
                  style: CustomTextStyles.titleMediumInterTeal900,
                ),
                SizedBox(height: 4.v),
                Text(
                  "With Raquel Murillo",
                  style: CustomTextStyles.labelLargeInterCyan90099,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
