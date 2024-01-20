import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/presentation/home_page/home_page.dart';
import 'package:detoxify_app/presentation/settings_page/settings_page.dart';
import 'package:detoxify_app/presentation/success_stories_home_page/success_stories_home_page.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_bottom_bar.dart';
import 'package:detoxify_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class MarkStoryScreen extends StatelessWidget {
  MarkStoryScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Success Stories",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 19.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImageLarge,
                    height: 146.v,
                    width: 348.h,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    margin: EdgeInsets.only(left: 17.h),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(left: 137.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAddUser,
                          height: 23.v,
                          width: 17.h,
                          margin: EdgeInsets.only(
                            top: 3.v,
                            bottom: 2.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "Mark",
                            textAlign: TextAlign.center,
                            style: CustomTextStyles
                                .headlineSmallRubikBluegray90003,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 334.h,
                      margin: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Text(
                        "I once was a slave to drugs, drowning in the depths of addiction. I battled with myself, with the demons that haunted me. But today, I stand here, free from their grasp. The road to recovery was arduous, filled with pain and setbacks. Yet, I persevered, clinging to the glimmer of hope that flickered within me. Now, I live a life of newfound purpose and joy. Every morning, I wake up grateful for this second chance, cherishing the beauty of a drug-free existence. \n 🙌 #RecoveryJourney #BreakingFree #SoberLife",
                        maxLines: 15,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          height: 1.38,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  _buildEightyNine(context),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgPlay40x40,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              margin: EdgeInsets.only(top: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Yuna",
                                    style:
                                        CustomTextStyles.bodyLargeGray9000518,
                                  ),
                                  SizedBox(height: 1.v),
                                  Text(
                                    "@spicyyunaroll",
                                    style: CustomTextStyles.bodyLargeGray50002,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.v),
                        Text(
                          "Inspiring!!!",
                          style: CustomTextStyles.bodyLargeGray90005,
                        ),
                        SizedBox(height: 14.v),
                        Row(
                          children: [
                            Text(
                              "11:18 AM",
                              style: CustomTextStyles.bodyMediumRubikGray50002,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUserGray50002,
                              height: 10.adaptSize,
                              width: 10.adaptSize,
                              margin: EdgeInsets.only(
                                top: 3.v,
                                bottom: 4.v,
                              ),
                            ),
                            Text(
                              "June 20, 2023",
                              style: CustomTextStyles.bodyMediumRubikGray50002,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img32HamburgerMenu,
        margin: EdgeInsets.only(
          left: 11.h,
          top: 11.v,
          bottom: 13.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlay40x40,
          margin: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEightyNine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 29.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img32Heart,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "54",
                    style: CustomTextStyles.bodyLargeGray90005,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img32Chat,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(left: 8.h),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 7.v,
                  ),
                  child: Text(
                    "27",
                    style: CustomTextStyles.bodyLargeGray90005,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgBookmark,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(left: 8.h),
                ),
              ],
            ),
          ),
          CustomIconButton(
            height: 47.adaptSize,
            width: 47.adaptSize,
            child: CustomImageView(),
          ),
        ],
      ),
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
