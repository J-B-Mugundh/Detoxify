import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Frame138Screen extends StatelessWidget {
  const Frame138Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 351.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 411.v,
                width: 351.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    _buildArrowDownSection(context),
                    _buildWidgetSection(context),
                    _buildQuestionSection(context),
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse23,
                      height: 56.v,
                      width: 90.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 78.h),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 45.v),
              _buildQrcodeSection(context),
              SizedBox(height: 34.v),
              _buildFileSection(context),
              SizedBox(height: 67.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDownSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 7.h,
          top: 8.v,
          right: 7.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillPurple.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 86.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 20.v,
                    width: 22.h,
                    margin: EdgeInsets.only(
                      top: 16.v,
                      bottom: 3.v,
                    ),
                  ),
                  Container(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimaryContainer,
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 175.adaptSize,
              width: 175.adaptSize,
              margin: EdgeInsets.only(left: 64.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 116.adaptSize,
                      width: 116.adaptSize,
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          58.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 139.adaptSize,
                      width: 139.adaptSize,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimaryContainer
                            .withOpacity(0.3),
                        borderRadius: BorderRadius.circular(
                          69.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 36.h,
                        vertical: 54.v,
                      ),
                      decoration:
                          AppDecoration.fillOnPrimaryContainer1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder87,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 4.v),
                          Text(
                            "your Score",
                            style: CustomTextStyles.titleLargePurple500,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text(
                                  "100",
                                  style: theme.textTheme.headlineLarge,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 4.h,
                                  top: 12.v,
                                ),
                                child: Text(
                                  "pt",
                                  style: CustomTextStyles.titleLargePurple500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          top: 69.v,
          bottom: 233.v,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse33,
              height: 90.v,
              width: 45.h,
              margin: EdgeInsets.only(bottom: 19.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse190x72,
              height: 90.v,
              width: 72.h,
              margin: EdgeInsets.only(top: 19.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQuestionSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.only(
          left: 17.h,
          right: 29.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.outlineBlack900016.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      bottom: 27.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.purple500,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "100%",
                          style: CustomTextStyles.titleLargePurple500,
                        ),
                        Text(
                          "Completion",
                          style: CustomTextStyles.bodyLargeDMSansGray900,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      bottom: 27.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.purple500,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "20",
                          style: CustomTextStyles.titleLargePurple500,
                        ),
                        Text(
                          "Total Question",
                          style: CustomTextStyles.bodyLargeDMSansGray900,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 27.v),
            Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                right: 58.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      bottom: 29.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.green800,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 6.h,
                      bottom: 1.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "13",
                          style: CustomTextStyles.titleLargeGreen800,
                        ),
                        Text(
                          "Correct",
                          style: CustomTextStyles.bodyLargeDMSansGray900,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      bottom: 29.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.red500,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text(
                            "07",
                            style: CustomTextStyles.titleLargeRed500,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "Wrong",
                          style: CustomTextStyles.bodyLargeDMSansGray900,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQrcodeSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 27.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillLightBlue,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgQrcode,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Text(
                "Play Again",
                style: CustomTextStyles.bodyMediumDMSansGray900,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 29.h,
              bottom: 1.v,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 25.h),
                  child: CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(5.h),
                    decoration: IconButtonStyleHelper.fillRed,
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEyeOnprimarycontainer,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  "Review Answer",
                  style: CustomTextStyles.bodyMediumDMSansGray900,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              bottom: 1.v,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15.h),
                  child: CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillErrorContainer,
                    alignment: Alignment.centerRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSend,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Text(
                  "Share Score",
                  style: CustomTextStyles.bodyMediumDMSansGray900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFileSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.fillTeal,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFile,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "Generate PDF",
                style: CustomTextStyles.bodyMediumDMSansGray900,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Column(
              children: [
                CustomIconButton(
                  height: 45.adaptSize,
                  width: 45.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  decoration: IconButtonStyleHelper.fillDeepPurple,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHomeOnprimarycontainer,
                  ),
                ),
                SizedBox(height: 2.v),
                Text(
                  "Home",
                  style: CustomTextStyles.bodyMediumDMSansGray900,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUserGray70001,
                  height: 45.v,
                  width: 48.h,
                  margin: EdgeInsets.only(left: 18.h),
                ),
                SizedBox(height: 3.v),
                Text(
                  "Leaderboard",
                  style: CustomTextStyles.bodyMediumDMSansGray900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
