import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/presentation/home_page/home_page.dart';
import 'package:detoxify_app/presentation/settings_page/settings_page.dart';
import 'package:detoxify_app/presentation/success_stories_home_page/success_stories_home_page.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MentorsListScreen extends StatelessWidget {
  MentorsListScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: Text(
                  "Counselors",
                  style: CustomTextStyles.titleLargeABeeZeeBlack90001,
                ),
              ),
              SizedBox(height: 17.v),
              _buildFrameFour(
                context,
                ticketImage: ImageConstant.imgTicket,
                ticketCount: "1",
                notificationCount: "9",
                userName: "Paul C. Ramos",
                zipcode: "5075",
              ),
              SizedBox(height: 13.v),
              _buildFrameFour(
                context,
                ticketImage: ImageConstant.imgTicketGray500,
                ticketCount: "2",
                notificationCount: "9",
                userName: "Derrick L. Thoman",
                zipcode: "4985",
              ),
              SizedBox(height: 14.v),
              _buildFrameFour(
                context,
                ticketImage: ImageConstant.imgTicketOrangeA700,
                ticketCount: "3",
                notificationCount: "8",
                userName: "Kelsey T. Donovan",
                zipcode: "4642",
              ),
              SizedBox(height: 13.v),
              _buildFrameSeven(
                context,
                dynamicText: "4",
                dynamicText1: "9",
                dynamicText2: "Jack L. Gregory",
                dynamicText3: "3874",
              ),
              SizedBox(height: 15.v),
              _buildFrameSeven(
                context,
                dynamicText: "5",
                dynamicText1: "7",
                dynamicText2: "Mary R. Mercado",
                dynamicText3: "3567",
              ),
              SizedBox(height: 13.v),
              _buildFrameSeven(
                context,
                dynamicText: "6",
                dynamicText1: "8",
                dynamicText2: "Theresa N. Maki",
                dynamicText3: "3478",
              ),
              SizedBox(height: 14.v),
              _buildFrameSeven(
                context,
                dynamicText: "7",
                dynamicText1: "5",
                dynamicText2: "Jack L. Gregory",
                dynamicText3: "3387",
              ),
              SizedBox(height: 14.v),
              _buildFrameSeven(
                context,
                dynamicText: "8",
                dynamicText1: "7",
                dynamicText2: "James R. Stokes",
                dynamicText3: "3257",
              ),
              SizedBox(height: 13.v),
              _buildFrameSeven(
                context,
                dynamicText: "9",
                dynamicText1: "8",
                dynamicText2: "David B. Rodriguez",
                dynamicText3: "3250",
              ),
              SizedBox(height: 12.v),
              _buildFrameSeven(
                context,
                dynamicText: "10",
                dynamicText1: "9",
                dynamicText2: "Annette R. Allen",
                dynamicText3: "3212",
              ),
              SizedBox(height: 4.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 38.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCharmSearch,
        margin: EdgeInsets.only(
          left: 13.h,
          top: 13.v,
          bottom: 18.v,
        ),
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "Join now! ",
          margin: EdgeInsets.fromLTRB(6.h, 17.v, 13.h, 6.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFluentAdd24Filled,
          margin: EdgeInsets.fromLTRB(6.h, 14.v, 13.h, 5.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgEiComment,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 13.v,
            right: 19.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildFrameFour(
    BuildContext context, {
    required String ticketImage,
    required String ticketCount,
    required String notificationCount,
    required String userName,
    required String zipcode,
  }) {
    return Container(
      decoration: AppDecoration.outlineBlack900011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Container(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                CustomImageView(
                  imagePath: ticketImage,
                  height: 25.v,
                  width: 24.h,
                  alignment: Alignment.topLeft,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      top: 2.v,
                    ),
                    child: Text(
                      ticketCount,
                      style:
                          CustomTextStyles.bodySmallABeeZeeBlack90001.copyWith(
                        color: appTheme.black90001.withOpacity(0.4),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 208.h,
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.outlineBlack900012,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 35.v,
                  width: 39.h,
                  margin: EdgeInsets.only(bottom: 1.v),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse35x35,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        radius: BorderRadius.circular(
                          17.h,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlueA20001,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text(
                                    notificationCount,
                                    style: CustomTextStyles
                                        .bodySmallABeeZeeOnPrimaryContainer
                                        .copyWith(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                    ),
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 9.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    userName,
                    style: CustomTextStyles.bodyMediumABeeZee.copyWith(
                      color: appTheme.black90001,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              top: 15.v,
              bottom: 16.v,
            ),
            child: Text(
              zipcode,
              style: CustomTextStyles.bodyMediumABeeZee15.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameSeven(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Container(
      decoration: AppDecoration.outlineBlack900011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(13.h),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Container(
              width: 22.adaptSize,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 5.v,
              ),
              decoration: AppDecoration.fillBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Text(
                dynamicText,
                style: CustomTextStyles.bodySmallABeeZeeBlack9000110.copyWith(
                  color: appTheme.black90001.withOpacity(0.45),
                ),
              ),
            ),
          ),
          Container(
            width: 208.h,
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.outlineBlack900012,
            child: Row(
              children: [
                SizedBox(
                  height: 36.v,
                  width: 39.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse4,
                        height: 35.adaptSize,
                        width: 35.adaptSize,
                        radius: BorderRadius.circular(
                          17.h,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlueA20001,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text(
                                    dynamicText1,
                                    style: CustomTextStyles
                                        .bodySmallABeeZeeOnPrimaryContainer
                                        .copyWith(
                                      color: theme
                                          .colorScheme.onPrimaryContainer
                                          .withOpacity(1),
                                    ),
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 11.v,
                    bottom: 8.v,
                  ),
                  child: Text(
                    dynamicText2,
                    style: CustomTextStyles.bodyMediumABeeZee.copyWith(
                      color: appTheme.black90001,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              top: 15.v,
              bottom: 16.v,
            ),
            child: Text(
              dynamicText3,
              style: CustomTextStyles.bodyMediumABeeZee15.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeicon:
        return AppRoutes.homePage;
      case BottomBarEnum.Exerciseicon:
        return "/";
      case BottomBarEnum.Peopleicon:
        return AppRoutes.successStoriesHomePage;
      case BottomBarEnum.Settingsicon:
        return AppRoutes.settingsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.successStoriesHomePage:
        return SuccessStoriesHomePage();
      case AppRoutes.settingsPage:
        return SettingsPage();
      default:
        return DefaultWidget();
    }
  }
}
