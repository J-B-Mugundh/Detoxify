import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:detoxify_app/widgets/custom_outlined_button.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class VirtualAssistantSetupScreen extends StatelessWidget {
  VirtualAssistantSetupScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 72.v),
                                  _buildDescriptionStack(context),
                                  SizedBox(height: 1.v),
                                  _buildCommunicateStack(context),
                                  SizedBox(height: 2.v),
                                  SizedBox(
                                      height: 35.v,
                                      width: 271.h,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text("Get more",
                                                    style: CustomTextStyles
                                                        .labelLargeBlueA100)),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Text(
                                                    "Stay virtually connected from anywhere",
                                                    style: CustomTextStyles
                                                        .labelLargeGray700))
                                          ])),
                                  SizedBox(height: 3.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 5.h),
                                      child: Text("What’s your name?",
                                          style: theme.textTheme.titleMedium)),
                                  SizedBox(height: 1.v),
                                  CustomTextFormField(
                                      controller: nameController,
                                      hintText: "Enter your name",
                                      hintStyle:
                                          CustomTextStyles.labelLargeGray700,
                                      textInputAction: TextInputAction.done,
                                      borderDecoration: TextFormFieldStyleHelper
                                          .outlineBlackTL23),
                                  SizedBox(height: 10.v),
                                  Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(top: 2.v),
                                        child: Text("Language",
                                            style:
                                                theme.textTheme.titleMedium)),
                                    CustomOutlinedButton(
                                        width: 78.h,
                                        text: "English>",
                                        margin: EdgeInsets.only(
                                            left: 11.h, bottom: 2.v))
                                  ]),
                                  SizedBox(height: 34.v),
                                  _buildUndrawAskMeAStack(context)
                                ]))))),
            bottomNavigationBar: _buildGetStartedButton(context)));
  }

  /// Section Widget
  Widget _buildDescriptionStack(BuildContext context) {
    return SizedBox(
        height: 183.v,
        width: 322.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 141.v,
                  width: 319.h,
                  margin: EdgeInsets.only(bottom: 15.v),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: 319.h,
                            child: Text(
                                "Delna!,Virtual assistant robot is more than just a sweet face.It can also teach itself how to recognize the faces of individual family members and finish works by command.Interactive by design,the bot listen to voice commands and responds.Is powered by artificial intelligence(AI).  ",
                                maxLines: 7,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelLargeGray700_1))),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 75.h, bottom: 2.v),
                            child: Text("Learn more",
                                style: CustomTextStyles.labelLargeBlueA100)))
                  ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Text("Terms of use", style: theme.textTheme.titleMedium)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text("Home", style: theme.textTheme.titleSmall)))
        ]));
  }

  /// Section Widget
  Widget _buildCommunicateStack(BuildContext context) {
    return SizedBox(
        height: 58.v,
        width: 300.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Text("Communicate", style: theme.textTheme.titleSmall)),
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  width: 289.h,
                  child: Text(
                      "Access Delna on the way,check your list and remainders",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeGray700)))
        ]));
  }

  /// Section Widget
  Widget _buildUndrawAskMeAStack(BuildContext context) {
    return SizedBox(
        height: 190.v,
        width: 325.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUndrawAskMeA,
              height: 190.v,
              width: 164.h,
              alignment: Alignment.centerRight),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(right: 144.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("Set up your voice ID",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 9.v),
                    Container(
                        height: 36.v,
                        width: 174.h,
                        padding:
                            EdgeInsets.only(left: 78.h, top: 5.v, bottom: 5.v),
                        decoration: AppDecoration.outlineBlack900013.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder2),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgMenu,
                            height: 25.v,
                            width: 17.h,
                            alignment: Alignment.topLeft))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
        text: "GET STARTED",
        margin: EdgeInsets.only(left: 25.h, right: 25.h, bottom: 54.v),
        buttonStyle: CustomButtonStyles.outlineBlackTL6,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer_1,
        onPressed: () {
          onTapGetStartedButton(context);
        });
  }

  /// Navigates to the virtualAssistantHomeScreen when the action is triggered.
  onTapGetStartedButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.virtualAssistantHomeScreen);
  }
}
