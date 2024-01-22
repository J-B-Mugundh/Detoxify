import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 7.v,
            ),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgStar6,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(
                    2.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "4",
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3,
            height: 42.adaptSize,
            width: 42.adaptSize,
            radius: BorderRadius.circular(
              12.h,
            ),
            margin: EdgeInsets.only(
              left: 10.h,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 10.v,
              bottom: 13.v,
            ),
            child: Text(
              "Sarah G.",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              right: 5.h,
              bottom: 13.v,
            ),
            child: Text(
              "143.64",
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
