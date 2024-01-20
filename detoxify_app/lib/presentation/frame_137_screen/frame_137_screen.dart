import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_title_image.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Frame137Screen extends StatelessWidget {
  Frame137Screen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  List<String> radioList = ["lbl_11", "lbl_12", "lbl_22", "lbl_44"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 334.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildArrowDownStack(context),
              SizedBox(height: 48.v),
              _buildGroup290RadioGroup(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildArrowDownRow(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirteenStack(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 220.v,
        width: 300.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
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
                        left: 6.h,
                        right: 2.h,
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
                              "06",
                              style: CustomTextStyles.titleSmallDMSansOrange900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Text(
                      "Question 19/20",
                      style: CustomTextStyles.titleSmallDMSansPurple500,
                    ),
                    SizedBox(height: 20.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 260.h,
                        margin: EdgeInsets.only(right: 10.h),
                        child: Text(
                          "If x=3 and y=5, What is the value of 2x+y?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumDMSansGray900,
                        ),
                      ),
                    ),
                    SizedBox(height: 44.v),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(
                  left: 123.h,
                  right: 110.h,
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
                      "15",
                      style: CustomTextStyles.titleLargePurple500Bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
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
                    leadingWidth: 36.999998000000005.h,
                    leading: Container(
                      height: 20.v,
                      width: 20.999998.h,
                      margin: EdgeInsets.only(
                        left: 16.h,
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
                      imagePath: ImageConstant.imgEllipse22,
                      margin: EdgeInsets.only(left: 40.h),
                    ),
                    actions: [
                      Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        margin: EdgeInsets.only(
                          left: 20.h,
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
                          right: 20.h,
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
                        imagePath: ImageConstant.imgEllipse32,
                        height: 90.v,
                        width: 45.h,
                        margin: EdgeInsets.only(bottom: 19.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse12,
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
          _buildThirteenStack(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup290RadioGroup(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 47.h),
      child: Column(
        children: [
          CustomRadioButton(
            width: 240.h,
            text: "11",
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
              text: "12",
              value: radioList[1],
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
          ),
          Padding(
            padding: EdgeInsets.only(top: 22.v),
            child: CustomRadioButton(
              width: 240.h,
              text: "22",
              value: radioList[2],
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
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.v),
            child: CustomRadioButton(
              width: 240.h,
              text: "44",
              value: radioList[3],
              groupValue: radioGroup,
              padding: EdgeInsets.symmetric(
                horizontal: 30.h,
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

  /// Section Widget
  Widget _buildArrowDownRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 17.h,
        bottom: 27.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowDownDeepPurpleA400,
            height: 20.v,
            width: 21.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Previous",
              style: CustomTextStyles.titleLargeBlack90001Bold,
            ),
          ),
          Spacer(),
          Text(
            "Next",
            style: CustomTextStyles.titleLargeBlack90001Bold,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowLeftDeepPurpleA400,
            height: 20.v,
            width: 21.h,
            margin: EdgeInsets.only(
              left: 7.h,
              top: 3.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }
}
