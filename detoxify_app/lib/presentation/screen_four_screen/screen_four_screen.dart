import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_icon_button.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ScreenFourScreen extends StatelessWidget {
  ScreenFourScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController questionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildStatusBar(context),
                  SizedBox(height: 83.v),
                  Text(
                    "Thu 9:21 AM",
                    style: CustomTextStyles.labelLargeDMSansGray60001,
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildMessageRow(
                      context,
                      descriptionText:
                          "Hello, I’m MediVirtuoso! 👋 I’m your personal health assistant. How can I help you?",
                    ),
                  ),
                  SizedBox(height: 16.v),
                  _buildOption(context),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildMessageRow(
                      context,
                      descriptionText:
                          "Overcoming drug dependence requires a multifaceted approach, integrating evidence-based strategies. Medication-Assisted Treatment (MAT), encompassing medications like methadone and behavioral therapies such as Cognitive-Behavioral Therapy (CBT), are pivotal. Support from groups like Narcotics Anonymous, coupled with individual counseling, aids in addressing both physiological and psychological aspects of addiction. Holistic practices like mindfulness and lifestyle changes contribute to overall well-being. Family involvement, educational programs, and a commitment to maintain a drug-free lifestyle collectively form a comprehensive solution. Seeking guidance from healthcare professionals ensures personalized, effective interventions with minimal side effects.",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildSendAMessagePrompt(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 78.v,
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgHiconLinear,
        margin: EdgeInsets.only(left: 24.h),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          children: [
            Row(
              children: [
                AppbarTitleIconbutton(
                  imagePath: ImageConstant.imgBot,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 3.v,
                    bottom: 2.v,
                  ),
                  child: Column(
                    children: [
                      AppbarSubtitleThree(
                        text: "MediVirtuoso",
                      ),
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(right: 2.h),
                        child: Row(
                          children: [
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 5.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.green300,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            ),
                            AppbarSubtitleFour(
                              text: "Always active",
                              margin: EdgeInsets.only(left: 4.h),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgHiconBoldMenu,
          margin: EdgeInsets.symmetric(horizontal: 24.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildStatusBar(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18.v),
          Text(
            "10:20",
            style: CustomTextStyles.titleMediumDMSansBlack900,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOption(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 41.h,
        right: 24.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillGray5001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          SizedBox(
            width: 278.h,
            child: Text(
              "Give some medical solutions to come\nout of drugs.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeDMSansBlue700.copyWith(
                height: 1.50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSendAMessagePrompt(BuildContext context) {
    return Container(
      height: 68.v,
      width: 365.h,
      margin: EdgeInsets.only(
        left: 10.h,
        bottom: 26.v,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 54.v,
              width: 365.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(48.h),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomTextFormField(
                    controller: questionController,
                    hintText: "What can cause liver \ndamage?",
                    hintStyle: CustomTextStyles.bodyLargeDMSansGray60001,
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 22.v, 20.h, 22.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgHiconLinearMicrophone1,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 68.v,
                    ),
                    contentPadding: EdgeInsets.only(
                      left: 20.h,
                      top: 10.v,
                      bottom: 10.v,
                    ),
                    borderDecoration: TextFormFieldStyleHelper.outlineGrayTL34,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 12.v,
                    bottom: 12.v,
                  ),
                  child: CustomIconButton(
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillBlueGray,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHiconLinearGray10001,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMessageRow(
    BuildContext context, {
    required String descriptionText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 623.v),
          child: CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillGrayTL16,
            child: CustomImageView(
              imagePath: ImageConstant.imgBot,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 3.v),
                Container(
                  width: 253.h,
                  margin: EdgeInsets.only(right: 1.h),
                  child: Text(
                    descriptionText,
                    maxLines: 26,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.bodyLargeDMSansBluegray90002.copyWith(
                      color: appTheme.blueGray90002,
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
