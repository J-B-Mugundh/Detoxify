import '../medical_assistant_chatbot_screen/widgets/posttosocialmedia_item_widget.dart';
import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MedicalAssistantChatbotScreen extends StatelessWidget {
  const MedicalAssistantChatbotScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 14.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildGoodMorningWhat(context),
              SizedBox(height: 25.v),
              Container(
                height: 33.v,
                width: 80.h,
                margin: EdgeInsets.only(right: 16.h),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 33.v,
                        width: 80.h,
                        decoration: AppDecoration.fillBlack90001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgContrast,
                          height: 7.v,
                          width: 14.h,
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 11.h,
                          bottom: 4.v,
                        ),
                        child: Text(
                          "Hello",
                          style:
                              CustomTextStyles.labelLargeOnPrimaryContainerBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(left: 14.h),
                  color: appTheme.gray10007,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Container(
                    height: 33.v,
                    width: 89.h,
                    decoration: AppDecoration.fillGray10007.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsGray10007,
                          height: 12.v,
                          width: 15.h,
                          alignment: Alignment.topLeft,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 9.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "Hi there",
                              style: CustomTextStyles.labelLargeBlack90001,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 53.v,
                width: 162.h,
                margin: EdgeInsets.only(right: 16.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 53.v,
                        width: 162.h,
                        padding: EdgeInsets.symmetric(horizontal: 1.h),
                        decoration: AppDecoration.fillBlack90001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgContrast,
                          height: 12.v,
                          width: 29.h,
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 134.h,
                        child: Text(
                          "Detoxify,add biscuit to my shopping list",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.labelLargeOnPrimaryContainerBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(left: 14.h),
                  color: appTheme.gray10007,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Container(
                    height: 38.v,
                    width: 165.h,
                    decoration: AppDecoration.fillGray10007.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsGray10007,
                          height: 14.v,
                          width: 29.h,
                          alignment: Alignment.topLeft,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Shopping list updated",
                            style: CustomTextStyles.labelLargeBlack90001,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Container(
                height: 72.v,
                width: 182.h,
                margin: EdgeInsets.only(right: 16.h),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 72.v,
                        width: 182.h,
                        padding: EdgeInsets.symmetric(horizontal: 1.h),
                        decoration: AppDecoration.fillBlack90001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgContrast,
                          height: 16.v,
                          width: 32.h,
                          alignment: Alignment.topRight,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 125.h,
                        margin: EdgeInsets.only(left: 10.h),
                        child: Text(
                          "Remind me to take vitamin medicines before sleeping",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.labelLargeOnPrimaryContainerBold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.only(left: 14.h),
                  color: appTheme.gray10007,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Container(
                    height: 33.v,
                    width: 105.h,
                    decoration: AppDecoration.fillGray10007.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsGray10007,
                          height: 12.v,
                          width: 18.h,
                          alignment: Alignment.topLeft,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 9.h,
                              bottom: 4.v,
                            ),
                            child: Text(
                              "Sure thing!",
                              style: CustomTextStyles.labelLargeBlack90001,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 39.v),
              Container(
                height: 10.v,
                margin: EdgeInsets.only(right: 27.h),
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 7,
                    activeDotColor: appTheme.black90001,
                    dotColor: appTheme.black90001,
                    activeDotScale: 1.4285714285714286,
                    dotHeight: 7.v,
                    dotWidth: 7.h,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildTwentySeven(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: CustomImageView(
        imagePath: ImageConstant.imgLockOnprimarycontainer,
        height: 18.v,
        width: 25.h,
        margin: EdgeInsets.only(
          top: 3.v,
          right: 43.h,
          bottom: 4.v,
        ),
      ),
      title: Container(
        margin: EdgeInsets.only(left: 21.h),
        decoration: AppDecoration.column7,
        child: Row(
          children: [
            Container(
              height: 7.adaptSize,
              width: 7.adaptSize,
              margin: EdgeInsets.only(bottom: 18.v),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVectorOnprimarycontainer,
              height: 25.v,
              width: 21.h,
              margin: EdgeInsets.only(left: 19.h),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 7.adaptSize,
          width: 7.adaptSize,
          margin: EdgeInsets.only(
            left: 25.h,
            top: 27.v,
            right: 21.h,
          ),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(
              3.h,
            ),
          ),
        ),
        Container(
          height: 7.adaptSize,
          width: 7.adaptSize,
          margin: EdgeInsets.fromLTRB(9.h, 26.v, 46.h, 1.v),
          decoration: BoxDecoration(
            color: appTheme.blue300,
            borderRadius: BorderRadius.circular(
              3.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGoodMorningWhat(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse950x50,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(
              top: 148.v,
              bottom: 71.v,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 155.v,
                    width: 279.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img580b585b2edbce24c47b23ef,
                          height: 155.v,
                          width: 279.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 206.h,
                            margin: EdgeInsets.only(right: 19.h),
                            child: Text(
                              "Good morning,what can I do for you?",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.titleLargePoppinsBlack90001,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Wrap(
                    runSpacing: 8.v,
                    spacing: 8.h,
                    children: List<Widget>.generate(
                        5, (index) => PosttosocialmediaItemWidget()),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySeven(BuildContext context) {
    return Container(
      height: 51.v,
      width: 322.h,
      margin: EdgeInsets.only(
        left: 28.h,
        right: 25.h,
        bottom: 31.v,
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle36,
            height: 51.v,
            width: 322.h,
            radius: BorderRadius.circular(
              14.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 51.v,
              width: 55.h,
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlineBlack900014.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgMenu,
                height: 25.v,
                width: 17.h,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
