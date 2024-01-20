import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_floating_button.dart';
import 'package:detoxify_app/widgets/custom_icon_button.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ScreenThreeScreen extends StatelessWidget {
  ScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

  TextEditingController messageController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 17.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 139.v),
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      children: [
                        Text(
                          "Wed 8:21 AM",
                          style: CustomTextStyles.labelLargeDMSansGray60001,
                        ),
                        SizedBox(height: 8.v),
                        _buildMessageRow(
                          context,
                          descriptionText:
                              "Hello, I’m MediVirtuoso! 👋 I’m your personal health assistant. How can I help you?",
                        ),
                        SizedBox(height: 16.v),
                        _buildOption(context),
                        SizedBox(height: 20.v),
                        _buildMessageRow(
                          context,
                          descriptionText:
                              "Drug use can have diverse impacts on individuals, affecting physical health with changes in heart rate, impaired coordination, and digestive issues. Mental and emotional consequences include altered mood, impaired judgment, and the risk of addiction. Socially, drug use can strain relationships, impact work or academic performance, and lead to legal and financial issues. Long-term risks encompass chronic diseases, cognitive impairments, and mental health disorders. Dependency and addiction may develop, leading to tolerance and withdrawal symptoms. Additionally, there's a risk of overdose, posing severe health threats, including respiratory failure and death, emphasizing the importance of seeking professional medical assistance for those struggling with substance use.",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildSendAMessagePrompt(context),
        floatingActionButton: _buildFloatingActionButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgHiconLinear,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 6.v,
          bottom: 6.v,
        ),
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
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 6.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOption(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "What are the impacts of drug intake?",
            style: CustomTextStyles.titleMediumDMSansBlue700,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSendAMessagePrompt(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.only(
        left: 10.h,
        bottom: 60.v,
      ),
      color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.customBorderBL48,
      ),
      child: Container(
        height: 54.v,
        width: 365.h,
        decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.customBorderBL48,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      controller: messageController,
                      hintText: "Type a message...",
                      hintStyle: CustomTextStyles.bodyLargeDMSansGray60001,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 10.v, 20.h, 10.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgHiconLinearMicrophone1,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 44.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 20.h,
                        top: 11.v,
                        bottom: 11.v,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
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
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 5.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.customBorderBL48,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTextFormField(
                        controller: messageController1,
                        hintText: "Type a message...",
                        hintStyle: CustomTextStyles.bodyLargeDMSansGray60001,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(12.h, 10.v, 20.h, 10.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHiconLinearMicrophone1,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 44.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          left: 20.h,
                          top: 11.v,
                          bottom: 11.v,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
      height: 44,
      width: 44,
      backgroundColor: appTheme.blueGray90002,
      decoration: FloatingButtonStyleHelper.fillBlueGray,
      child: CustomImageView(
        imagePath: ImageConstant.imgHiconLinearGray10001,
        height: 22.0.v,
        width: 22.0.h,
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
              vertical: 17.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.customBorderBL24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 24.v),
                SizedBox(
                  width: 255.h,
                  child: Text(
                    descriptionText,
                    maxLines: 25,
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
