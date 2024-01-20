import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ScreenFiveScreen extends StatelessWidget {
  const ScreenFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildScreenFive(context),
                SizedBox(height: 83.v),
                Text(
                  "Thu 9:21 AM",
                  style: CustomTextStyles.labelLargeDMSansGray60001,
                ),
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 94.h,
                      right: 24.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.fillGray5001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        Text(
                          "What can cause liver damage?",
                          style: CustomTextStyles.bodyLargeDMSansBlue700,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 623.v),
                        child: CustomIconButton(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          decoration: IconButtonStyleHelper.fillGrayTL16,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgBot,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 17.v,
                          ),
                          decoration: AppDecoration.fillGray10001.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL24,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 68.v),
                              Container(
                                width: 247.h,
                                margin: EdgeInsets.only(right: 7.h),
                                child: Text(
                                  "Liver damage can occur due to various factors, including excessive alcohol consumption, viral infections like hepatitis, non-alcoholic fatty liver disease associated with obesity, certain medications, autoimmune conditions, genetic disorders, exposure to toxins, chronic diseases, poorly managed diabetes, and malnutrition. The liver plays a vital role in metabolism, detoxification, and nutrient storage, so any compromise to its function can have widespread health implications. Early detection of the underlying cause and adopting a healthy lifestyle, including a balanced diet and limited alcohol intake, are essential for preventing and managing liver damage. ",
                                  maxLines: 23,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodyLargeDMSansBluegray90002
                                      .copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 26.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 104.v,
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgHiconLinear,
        margin: EdgeInsets.only(left: 24.h),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            Row(
              children: [
                AppbarTitleIconbutton(
                  imagePath: ImageConstant.imgBot,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    children: [
                      AppbarSubtitleThree(
                        text: "MediVirtuoso",
                      ),
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: Row(
                          children: [
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 5.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.green300,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            AppbarSubtitleFour(
                              text: "Always active",
                              margin: EdgeInsets.only(left: 4.h),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgHiconBoldMenu,
          margin: EdgeInsets.symmetric(horizontal: 24.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildScreenFive(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18.v),
          Text(
            "10:20",
            style: CustomTextStyles.titleMediumDMSansBlack900,
          ),
        ],
      ),
    );
  }
}
