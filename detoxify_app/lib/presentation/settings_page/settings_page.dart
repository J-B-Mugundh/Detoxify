import '../settings_page/widgets/heightcard_item_widget.dart';
import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:detoxify_app/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 4.v),
                child: Column(children: [
                  SizedBox(height: 18.v),
                  Container(
                      height: 85.adaptSize,
                      width: 85.adaptSize,
                      padding: EdgeInsets.all(2.h),
                      decoration: AppDecoration.outlineIndigoAC.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder42),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgEllipse65,
                          height: 75.adaptSize,
                          width: 75.adaptSize,
                          radius: BorderRadius.circular(37.h),
                          alignment: Alignment.center)),
                  SizedBox(height: 8.v),
                  Text("Monica Gamage",
                      style: CustomTextStyles.titleSmallGray90002),
                  SizedBox(height: 3.v),
                  Text("Lose a fat progreme", style: theme.textTheme.bodySmall),
                  SizedBox(height: 13.v),
                  CustomElevatedButton(
                      height: 30.v,
                      width: 83.h,
                      text: "Edit",
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
                      buttonTextStyle:
                          CustomTextStyles.labelLargeOnPrimaryContainer),
                  SizedBox(height: 30.v),
                  _buildHeightCard(context),
                  SizedBox(height: 23.v),
                  _buildAccountSection(context),
                  SizedBox(height: 15.v),
                  _buildNotificationSection(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 46.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack90001,
            margin: EdgeInsets.only(left: 32.h, top: 16.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "Profile"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.fromLTRB(28.h, 18.v, 28.h, 17.v))
        ]);
  }

  /// Section Widget
  Widget _buildHeightCard(BuildContext context) {
    return SizedBox(
        height: 65.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 12.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 15.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return HeightcardItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildAccountSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 12.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v),
        decoration: AppDecoration.outlineGray90011
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("Account",
                      style: CustomTextStyles.titleMediumGray90002)),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: _buildAchievement(context,
                      documentImage: ImageConstant.imgIconlyLightProfile,
                      achievementText: "Personal Data")),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: _buildAchievement(context,
                      documentImage: ImageConstant.imgIconlyLightDocument,
                      achievementText: "Achievement")),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: _buildAchievement(context,
                      documentImage: ImageConstant.imgIconlyLightGraph,
                      achievementText: "Activity History")),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: _buildAchievement(context,
                      documentImage: ImageConstant.imgIconlyLightChart,
                      achievementText: "Workout Progress"))
            ]));
  }

  /// Section Widget
  Widget _buildNotificationSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 12.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v),
        decoration: AppDecoration.outlineGray90011
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("Notification",
                      style: CustomTextStyles.titleMediumGray90002)),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIconlyLightNotification,
                        height: 20.adaptSize,
                        width: 20.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text("Pop-up Notification",
                            style: theme.textTheme.bodySmall)),
                    Spacer(),
                    CustomSwitch(
                        value: isSelectedSwitch,
                        onChange: (value) {
                          isSelectedSwitch = value;
                        })
                  ]))
            ]));
  }

  /// Common widget
  Widget _buildAchievement(
    BuildContext context, {
    required String documentImage,
    required String achievementText,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: documentImage, height: 20.adaptSize, width: 20.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(achievementText,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: appTheme.gray60005))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 18.adaptSize,
          width: 18.adaptSize)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
