import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/presentation/home_page/home_page.dart';
import 'package:detoxify_app/presentation/settings_page/settings_page.dart';
import 'package:detoxify_app/presentation/success_stories_home_page/success_stories_home_page.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class FrameScreen extends StatelessWidget {
  FrameScreen({Key? key})
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
          width: 380.h,
          padding: EdgeInsets.symmetric(horizontal: 18.h),
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
              SizedBox(height: 11.v),
              CustomImageView(
                imagePath: ImageConstant.imgAddUser,
                height: 23.v,
                width: 17.h,
                margin: EdgeInsets.only(left: 106.h),
              ),
              Spacer(
                flex: 26,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Войти",
                  style: CustomTextStyles.titleMediumManropeOnPrimaryContainer,
                ),
              ),
              Spacer(
                flex: 37,
              ),
              Row(
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
              Spacer(
                flex: 36,
              ),
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
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.img32HamburgerMenu,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.v,
          bottom: 16.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlay40x40,
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 8.v,
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
