import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_title_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegistrationFiveScreen extends StatelessWidget {
  RegistrationFiveScreen({Key? key}) : super(key: key);

  TextEditingController dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 69.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPlayGray90004,
                      height: 77.v,
                      width: 60.h),
                  SizedBox(height: 33.v),
                  Container(
                      margin: EdgeInsets.only(left: 38.h, right: 25.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 32.h, vertical: 22.v),
                      decoration: AppDecoration.fillBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 4.v),
                            SizedBox(
                                width: 205.h,
                                child: Text(
                                    "What will you do to make\n your parents feel proud\n of you?",
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyLargeBalooChettanGray90004))
                          ])),
                  SizedBox(height: 33.v),
                  CustomTextFormField(
                      controller: dataController,
                      hintText: "Type something",
                      hintStyle:
                          CustomTextStyles.bodyMediumBarlowCondensedGray90004,
                      textInputAction: TextInputAction.done),
                  Spacer(),
                  SizedBox(height: 83.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgSettingsBlack90001,
                      height: 76.adaptSize,
                      width: 76.adaptSize,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 118.h))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 37.v,
        leadingWidth: 46.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 5.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: SizedBox(
            height: 22.879997.v,
            width: 100.h,
            child: Stack(children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 15.v, bottom: 1.v),
                      child: Container(
                          height: 6.v,
                          width: 100.h,
                          decoration: BoxDecoration(
                              color: appTheme.gray10007,
                              borderRadius: BorderRadius.circular(3.h)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(3.h),
                              child: LinearProgressIndicator(
                                  value: 0.8,
                                  backgroundColor: appTheme.gray10007,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      appTheme.gray90004)))))),
              Container(
                  height: 12.999996.v,
                  width: 15.h,
                  margin: EdgeInsets.only(left: 63.h, top: 9.v, right: 21.h),
                  decoration: AppDecoration.column7,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVector2398,
                        height: 13.v,
                        width: 15.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector2399,
                        height: 4.v,
                        width: 5.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.fromLTRB(6.h, 6.v, 3.h, 2.v))
                  ])),
              AppbarTitleImage(
                  imagePath: ImageConstant.imgCut,
                  margin: EdgeInsets.only(left: 67.h, right: 18.h, bottom: 8.v))
            ])),
        actions: [
          Container(
              height: 12.999996.v,
              width: 15.h,
              margin: EdgeInsets.only(left: 63.h, top: 9.v, right: 21.h),
              decoration: AppDecoration.column7,
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgVector2398,
                    height: 13.v,
                    width: 15.h,
                    alignment: Alignment.center),
                CustomImageView(
                    imagePath: ImageConstant.imgVector2399,
                    height: 4.v,
                    width: 5.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.fromLTRB(6.h, 6.v, 3.h, 2.v))
              ]))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
