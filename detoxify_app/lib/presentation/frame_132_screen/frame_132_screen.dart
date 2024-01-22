import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_title_image.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Frame132Screen extends StatelessWidget {
  Frame132Screen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  List<String> radioList = [
    "lbl_canberra",
    "lbl_sydney",
    "lbl_brisbane",
    "lbl_melbourne"
  ];

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
                    _buildArrowDownStack(context),
                    SizedBox(height: 48.v),
                    _buildGroup339RadioGroup(context),
                    SizedBox(height: 19.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 17.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Next",
                              style: CustomTextStyles.titleLargeBlack90001Bold,
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgArrowLeftDeepPurpleA400,
                              height: 20.v,
                              width: 21.h,
                              margin: EdgeInsets.only(
                                left: 7.h,
                                top: 3.v,
                                bottom: 3.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 28.v),
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
  Widget _buildArrowDownStack(BuildContext context) {
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
                    leadingWidth: 51.999998000000005.h,
                    leading: Container(
                      height: 20.v,
                      width: 20.999998.h,
                      margin: EdgeInsets.only(
                        left: 31.h,
                        top: 32.v,
                        bottom: 11.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 20.v,
                            width: 21.h,
                            alignment: Alignment.center,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowDown,
                            height: 20.v,
                            width: 21.h,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    title: AppbarTitleImage(
                      imagePath: ImageConstant.imgEllipse256x90,
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
                        imagePath: ImageConstant.imgEllipse390x45,
                        height: 90.v,
                        width: 45.h,
                        margin: EdgeInsets.only(bottom: 19.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse190x55,
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
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlinePurple5001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 18.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "01",
                          style: CustomTextStyles.titleSmallDMSansGreen800,
                        ),
                        Container(
                          height: 8.v,
                          width: 30.h,
                          margin: EdgeInsets.only(
                            left: 13.h,
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
                            "0",
                            style: CustomTextStyles.titleSmallDMSansOrange900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Text(
                    "Question 1/20",
                    style: CustomTextStyles.titleSmallDMSansPurple500,
                  ),
                  SizedBox(height: 21.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What is the capital city of Australia?",
                      style: CustomTextStyles.titleMediumDMSansGray900,
                    ),
                  ),
                  SizedBox(height: 66.v),
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
                    horizontal: 8.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder25,
                  ),
                  child: Text(
                    "06",
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
  Widget _buildGroup339RadioGroup(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 47.h),
      child: Column(
        children: [
          CustomRadioButton(
            width: 240.h,
            text: "Canberra",
            value: radioList[0],
            groupValue: radioGroup,
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 9.v,
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
              text: "Sydney",
              value: radioList[1],
              groupValue: radioGroup,
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 8.v,
              ),
              isRightCheck: true,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 22.v),
            child: CustomRadioButton(
              width: 240.h,
              text: "Brisbane",
              value: radioList[2],
              groupValue: radioGroup,
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 7.v,
              ),
              isRightCheck: true,
              onChange: (value) {
                radioGroup = value;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.v),
            child: CustomRadioButton(
              width: 240.h,
              text: "Melbourne",
              value: radioList[3],
              groupValue: radioGroup,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 9.v,
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
