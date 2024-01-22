import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegistrationSevenScreen extends StatelessWidget {
  RegistrationSevenScreen({Key? key}) : super(key: key);

  TextEditingController dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 54.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgPlayGray90004,
                          height: 77.v,
                          width: 60.h,
                          margin: EdgeInsets.only(left: 124.h)),
                      SizedBox(height: 53.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 297.h,
                              margin: EdgeInsets.symmetric(horizontal: 20.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13.h, vertical: 22.v),
                              decoration: AppDecoration.fillBlueA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 6.v),
                                    Container(
                                        width: 263.h,
                                        margin: EdgeInsets.only(right: 8.h),
                                        child: Text(
                                            "What is the one thing that will take\n you out of a peaceful environment?",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyLargeBalooChettanBlack90001))
                                  ]))),
                      SizedBox(height: 50.v),
                      CustomTextFormField(
                          controller: dataController,
                          hintText: "Type something",
                          hintStyle: CustomTextStyles
                              .bodyMediumBarlowCondensedGray90004,
                          textInputAction: TextInputAction.done),
                      Spacer(flex: 51),
                      CustomImageView(
                          imagePath: ImageConstant.imgSettingsBlack9000177x80,
                          height: 77.v,
                          width: 80.h,
                          margin: EdgeInsets.only(left: 118.h)),
                      Spacer(flex: 48)
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
                    value: 0.8,
                    backgroundColor: appTheme.gray10007,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(appTheme.gray90004)))));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
