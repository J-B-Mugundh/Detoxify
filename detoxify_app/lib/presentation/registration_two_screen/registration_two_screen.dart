import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegistrationTwoScreen extends StatelessWidget {
  RegistrationTwoScreen({Key? key}) : super(key: key);

  TextEditingController musicGenreOneController = TextEditingController();

  TextEditingController musicGenreTwoController = TextEditingController();

  TextEditingController musicGenreThreeController = TextEditingController();

  TextEditingController musicGenreFourController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
                child: Column(children: [
                  _buildPlayRow(context),
                  SizedBox(height: 32.v),
                  _buildMusicGenreOne(context),
                  SizedBox(height: 18.v),
                  _buildMusicGenreTwo(context),
                  SizedBox(height: 18.v),
                  _buildMusicGenreThree(context),
                  SizedBox(height: 18.v),
                  _buildMusicGenreFour(context),
                  Spacer(flex: 54),
                  CustomImageView(
                      imagePath: ImageConstant.imgPlayBlack90001,
                      height: 77.v,
                      width: 60.h),
                  Spacer(flex: 45)
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
                    value: 0.2,
                    backgroundColor: appTheme.gray10007,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(appTheme.black90001)))));
  }

  /// Section Widget
  Widget _buildPlayRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgPlayBlack90001,
                  height: 77.v,
                  width: 60.h,
                  margin: EdgeInsets.only(bottom: 7.v)),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 27.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 14.v),
                      decoration: AppDecoration.fillBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.v),
                            Container(
                                width: 182.h,
                                margin: EdgeInsets.only(right: 13.h),
                                child: Text(
                                    "What kind of music do you like the most?",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyLargeBalooChettanGray90004))
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildMusicGenreOne(BuildContext context) {
    return CustomTextFormField(
        controller: musicGenreOneController,
        hintText: "Carnatic",
        hintStyle: CustomTextStyles.bodyMediumBalooChettanGray90004);
  }

  /// Section Widget
  Widget _buildMusicGenreTwo(BuildContext context) {
    return CustomTextFormField(
        controller: musicGenreTwoController,
        hintText: "Western",
        hintStyle: CustomTextStyles.bodyMediumBalooChettanGray90004);
  }

  /// Section Widget
  Widget _buildMusicGenreThree(BuildContext context) {
    return CustomTextFormField(
        controller: musicGenreThreeController,
        hintText: "Pop",
        hintStyle: CustomTextStyles.bodyMediumBalooChettanGray90004);
  }

  /// Section Widget
  Widget _buildMusicGenreFour(BuildContext context) {
    return CustomTextFormField(
        controller: musicGenreFourController,
        hintText: "Rap",
        hintStyle: CustomTextStyles.bodyMediumBalooChettanGray90004,
        textInputAction: TextInputAction.done);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
