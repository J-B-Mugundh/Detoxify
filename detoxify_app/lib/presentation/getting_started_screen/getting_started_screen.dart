import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:detoxify_app/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class GettingStartedScreen extends StatelessWidget {
  GettingStartedScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 32.v),
                      _buildWelcomeScreen(context),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 87.h),
                          child: Text("Welcome To",
                              style: CustomTextStyles
                                  .titleLargePoppinsLightblue400)),
                      Padding(
                          padding: EdgeInsets.only(left: 55.h),
                          child: Text("Detoxify",
                              style: theme.textTheme.displayMedium))
                    ])),
            bottomNavigationBar: _buildGetStartedButton(context)));
  }

  /// Section Widget
  Widget _buildWelcomeScreen(BuildContext context) {
    return Container(
        height: 349.v,
        width: 307.h,
        margin: EdgeInsets.only(left: 4.h),
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 150.v,
                  width: 307.h,
                  decoration: BoxDecoration(
                      color: appTheme.gray90003,
                      borderRadius: BorderRadius.circular(153.h)))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: 300.h,
                  margin: EdgeInsets.only(left: 3.h, right: 3.h, bottom: 27.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 44.h, vertical: 49.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup357),
                          fit: BoxFit.cover)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                            height: 34.v,
                            width: 41.h,
                            margin: EdgeInsets.only(top: 188.v),
                            child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomSwitch(
                                      alignment: Alignment.bottomCenter,
                                      value: isSelectedSwitch,
                                      onChange: (value) {
                                        isSelectedSwitch = value;
                                      }),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgThumbsUp,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(
                                          right: 4.h, bottom: 4.v)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgTelevision,
                                      height: 20.adaptSize,
                                      width: 20.adaptSize,
                                      alignment: Alignment.topLeft,
                                      margin:
                                          EdgeInsets.only(left: 4.h, top: 2.v)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgClose,
                                      height: 16.v,
                                      width: 14.h,
                                      alignment: Alignment.topLeft),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgUser,
                                      height: 17.v,
                                      width: 15.h,
                                      alignment: Alignment.topCenter,
                                      margin: EdgeInsets.only(top: 7.v))
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbsUpCyan400,
                            height: 34.v,
                            width: 21.h,
                            margin: EdgeInsets.only(
                                left: 32.h, top: 157.v, bottom: 31.v))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Get Started",
        margin: EdgeInsets.only(left: 28.h, right: 32.h, bottom: 37.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientTealAToPrimaryDecoration,
        onPressed: () {
          onTapGetStartedButton(context);
        });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapGetStartedButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
