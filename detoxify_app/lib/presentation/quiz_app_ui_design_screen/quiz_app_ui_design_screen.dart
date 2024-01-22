import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_title_image.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:detoxify_app/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class QuizAppUiDesignScreen extends StatelessWidget {
  QuizAppUiDesignScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  List<String> radioList = ["lbl_yes", "lbl_uncertain", "lbl_none"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.purple5001,
        body: Container(
          width: 360.h,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 5.v,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 9.v),
              Container(
                margin: EdgeInsets.only(left: 4.h),
                decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildArrowDownSection(context),
                    SizedBox(height: 46.v),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 45.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 19.h,
                        vertical: 10.v,
                      ),
                      decoration: AppDecoration.outlinePurple500.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: Text(
                              "No",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgCheckmark,
                            height: 22.v,
                            width: 21.h,
                            margin: EdgeInsets.only(top: 2.v),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 21.v),
                    _buildGroup251Section(context),
                    SizedBox(height: 15.v),
                    CustomElevatedButton(
                      height: 44.v,
                      width: 172.h,
                      text: "Submit",
                      buttonStyle: CustomButtonStyles.fillPurple,
                      buttonTextStyle: CustomTextStyles.titleLargeBlack90001,
                    ),
                    SizedBox(height: 16.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowDownSection(BuildContext context) {
    return SizedBox(
      height: 328.v,
      width: 334.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: AppDecoration.fillPurple.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 64.v,
                    leadingWidth: 52.h,
                    leading: AppbarLeadingImage(
                      imagePath: ImageConstant.imgArrowDown,
                      margin: EdgeInsets.only(
                        left: 31.h,
                        top: 32.v,
                        bottom: 11.v,
                      ),
                    ),
                    title: AppbarTitleImage(
                      imagePath: ImageConstant.imgEllipse21,
                      margin: EdgeInsets.only(left: 40.h),
                    ),
                    actions: [
                      Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        margin: EdgeInsets.only(
                          left: 31.h,
                          top: 16.v,
                          bottom: 8.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                      ),
                      AppbarTrailingImage(
                        imagePath: ImageConstant.imgThumbsUpOnprimarycontainer,
                        margin: EdgeInsets.only(
                          left: 45.h,
                          top: 38.v,
                          right: 31.h,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse31,
                        height: 90.v,
                        width: 45.h,
                        margin: EdgeInsets.only(bottom: 19.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse11,
                        height: 90.v,
                        width: 55.h,
                        margin: EdgeInsets.only(top: 19.v),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 17.h),
              padding: EdgeInsets.symmetric(vertical: 10.v),
              decoration: AppDecoration.outlinePurple5001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 21.h,
                      right: 18.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "13",
                          style: CustomTextStyles.titleSmallDMSansGreen800,
                        ),
                        Container(
                          height: 8.v,
                          width: 30.h,
                          margin: EdgeInsets.only(
                            left: 14.h,
                            top: 6.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.green800,
                            borderRadius: BorderRadius.circular(
                              4.h,
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 8.v,
                          width: 36.h,
                          margin: EdgeInsets.only(
                            top: 6.v,
                            bottom: 4.v,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.orange900,
                            borderRadius: BorderRadius.circular(
                              4.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text(
                            "07",
                            style: CustomTextStyles.titleSmallDMSansOrange900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Text(
                    "Question 20/20",
                    style: CustomTextStyles.titleSmallDMSansPurple500,
                  ),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 289.h,
                      margin: EdgeInsets.only(right: 11.h),
                      child: Text(
                        "If all roses are flowers and some flowers fade quickly, can it be logically\n concluded that some roses fade quickly?",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleMediumDMSansGray900,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 140.h,
                top: 108.v,
                right: 127.h,
              ),
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder33,
              ),
              child: Container(
                padding: EdgeInsets.all(4.h),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup31,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  width: 49.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder25,
                  ),
                  child: Text(
                    "18",
                    style: CustomTextStyles.titleLargePurple500Bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup251Section(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 45.h),
      child: Column(
        children: [
          CustomRadioButton(
            width: 240.h,
            text: "Yes",
            value: radioList[0],
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 10.v,
            ),
            isRightCheck: true,
            onChange: (value) {
              radioGroup = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 21.v),
            child: CustomRadioButton(
              width: 240.h,
              text: "Uncertain",
              value: radioList[1],
              groupValue: radioGroup,
              padding: EdgeInsets.symmetric(
                horizontal: 28.h,
                vertical: 10.v,
              ),
              isRightCheck: true,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 21.v),
            child: CustomRadioButton(
              width: 240.h,
              text: "None",
              value: radioList[2],
              groupValue: radioGroup,
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
                vertical: 8.v,
              ),
              isRightCheck: true,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
