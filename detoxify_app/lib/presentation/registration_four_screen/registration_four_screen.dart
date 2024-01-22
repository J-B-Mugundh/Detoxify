import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class RegistrationFourScreen extends StatelessWidget {
  const RegistrationFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 57.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPlay77x60,
                      height: 77.v,
                      width: 60.h),
                  SizedBox(height: 56.v),
                  _buildSixtyNine(context),
                  SizedBox(height: 21.v),
                  CustomOutlinedButton(
                      height: 50.v,
                      text: "Type Something",
                      buttonStyle: CustomButtonStyles.outlineBlueGray,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumBarlowCondensedGray70002),
                  Spacer(),
                  SizedBox(height: 79.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgPlayBlack9000177x60,
                      height: 77.v,
                      width: 60.h)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        leadingWidth: 46.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: Container(
            height: 6.v,
            width: 100.h,
            decoration: BoxDecoration(
                color: appTheme.gray10007,
                borderRadius: BorderRadius.circular(3.h)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(3.h),
                child: LinearProgressIndicator(
                    value: 0.6,
                    backgroundColor: appTheme.gray10007,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(appTheme.black90001)))));
  }

  /// Section Widget
  Widget _buildSixtyNine(BuildContext context) {
    return Container(
        width: 311.h,
        margin: EdgeInsets.only(left: 18.h, right: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 18.v),
        decoration: AppDecoration.fillBlueA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Container(
            width: 290.h,
            margin: EdgeInsets.only(left: 9.h),
            child: Text(
                "What is your lifetime goal and what\ndo you consider as your greatest\nachievement?",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargeBalooChettanGray90004)));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
