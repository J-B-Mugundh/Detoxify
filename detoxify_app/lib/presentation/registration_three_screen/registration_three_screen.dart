import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegistrationThreeScreen extends StatelessWidget {
  RegistrationThreeScreen({Key? key}) : super(key: key);

  TextEditingController musicValueController = TextEditingController();

  TextEditingController visualArtsValueController = TextEditingController();

  TextEditingController danceValueController = TextEditingController();

  TextEditingController photographyValueController = TextEditingController();

  TextEditingController contentWritingController = TextEditingController();

  TextEditingController typeSomethingValueController = TextEditingController();

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
                  _buildNinetyFour(context),
                  SizedBox(height: 15.v),
                  _buildMusicValue(context),
                  SizedBox(height: 18.v),
                  _buildVisualArtsValue(context),
                  SizedBox(height: 18.v),
                  _buildDanceValue(context),
                  SizedBox(height: 18.v),
                  _buildPhotographyValue(context),
                  SizedBox(height: 18.v),
                  _buildContentWriting(context),
                  SizedBox(height: 24.v),
                  _buildIfOthersWhatItIs(context),
                  SizedBox(height: 24.v),
                  _buildTypeSomethingValue(context),
                  SizedBox(height: 5.v)
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
                    value: 0.4,
                    backgroundColor: appTheme.gray10007,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(appTheme.black90001)))));
  }

  /// Section Widget
  Widget _buildNinetyFour(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgPlayBlack9000177x60,
                  height: 77.v,
                  width: 60.h,
                  margin: EdgeInsets.only(bottom: 24.v)),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 18.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25.h, vertical: 4.v),
                      decoration: AppDecoration.fillBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 12.v),
                        Container(
                            width: 184.h,
                            margin: EdgeInsets.only(right: 2.h),
                            child: Text(
                                "Do you have a favorite art form?If yes, What it can be?",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyLargeBalooChettanGray90004))
                      ])))
            ]));
  }

  /// Section Widget
  Widget _buildMusicValue(BuildContext context) {
    return CustomTextFormField(
        controller: musicValueController,
        hintText: "Music",
        hintStyle: CustomTextStyles.bodyMediumBalooChettanGray90004);
  }

  /// Section Widget
  Widget _buildVisualArtsValue(BuildContext context) {
    return CustomTextFormField(
        controller: visualArtsValueController,
        hintText: "Visual Arts",
        hintStyle: CustomTextStyles.bodyMediumBalooChettanGray90004);
  }

  /// Section Widget
  Widget _buildDanceValue(BuildContext context) {
    return CustomTextFormField(
        controller: danceValueController,
        hintText: "Dance",
        hintStyle: CustomTextStyles.bodyMediumBalooChettanGray90004);
  }

  /// Section Widget
  Widget _buildPhotographyValue(BuildContext context) {
    return CustomTextFormField(
        controller: photographyValueController,
        hintText: "Photography",
        hintStyle: CustomTextStyles.bodyMediumBalooChettanGray90004);
  }

  /// Section Widget
  Widget _buildContentWriting(BuildContext context) {
    return CustomTextFormField(
        controller: contentWritingController,
        hintText: "Content Writing",
        hintStyle: CustomTextStyles.bodyMediumBalooChettanGray90004);
  }

  /// Section Widget
  Widget _buildIfOthersWhatItIs(BuildContext context) {
    return CustomElevatedButton(
        height: 41.v,
        width: 182.h,
        text: "If others,what it is?",
        margin: EdgeInsets.only(left: 62.h),
        buttonStyle: CustomButtonStyles.fillBlueA,
        buttonTextStyle: CustomTextStyles.bodyMediumBalooChettan,
        alignment: Alignment.centerLeft);
  }

  /// Section Widget
  Widget _buildTypeSomethingValue(BuildContext context) {
    return CustomTextFormField(
        controller: typeSomethingValueController,
        hintText: "Type something",
        hintStyle: CustomTextStyles.bodyMediumBarlowCondensedGray90004,
        textInputAction: TextInputAction.done);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
