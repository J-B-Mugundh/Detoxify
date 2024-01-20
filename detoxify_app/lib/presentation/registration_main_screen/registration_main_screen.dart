import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class RegistrationMainScreen extends StatelessWidget {
  const RegistrationMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(29.h),
                child: Column(children: [
                  Spacer(flex: 41),
                  Container(
                      width: 228.h,
                      margin: EdgeInsets.symmetric(horizontal: 44.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 18.h, vertical: 12.v),
                      decoration: AppDecoration.fillBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5.v),
                            Container(
                                width: 180.h,
                                margin: EdgeInsets.only(right: 9.h),
                                child: Text(
                                    "Let's create your custom practice plan?",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .bodyLargeBalooChettanBlack9000118))
                          ])),
                  SizedBox(height: 22.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgCat,
                      height: 105.v,
                      width: 81.h),
                  SizedBox(height: 2.v),
                  Container(
                      height: 5.v,
                      width: 54.h,
                      decoration: BoxDecoration(
                          color: appTheme.gray10007,
                          borderRadius: BorderRadius.circular(27.h))),
                  Spacer(flex: 58),
                  CustomElevatedButton(
                      height: 50.v,
                      text: "Let's go!",
                      buttonStyle: CustomButtonStyles.outlineBlueA,
                      buttonTextStyle: CustomTextStyles
                          .bodyLargeBalooChettanOnPrimaryContainer,
                      onPressed: () {
                        onTapLetsGo(context);
                      }),
                  SizedBox(height: 14.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("Skip now",
                          style: CustomTextStyles.labelLargeBlueA100))
                ]))));
  }

  /// Navigates to the registrationOneScreen when the action is triggered.
  onTapLetsGo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrationOneScreen);
  }
}
