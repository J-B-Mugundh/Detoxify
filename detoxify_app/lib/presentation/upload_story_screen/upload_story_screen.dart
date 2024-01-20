import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/presentation/home_page/home_page.dart';
import 'package:detoxify_app/presentation/settings_page/settings_page.dart';
import 'package:detoxify_app/presentation/success_stories_home_page/success_stories_home_page.dart';
import 'package:detoxify_app/widgets/custom_bottom_bar.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class UploadStoryScreen extends StatelessWidget {
  UploadStoryScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 39.h,
            vertical: 48.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 48.h),
                  child: Text(
                    "Success Stories",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 31.v),
              Container(
                width: 290.h,
                margin: EdgeInsets.only(right: 7.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 93.h,
                  vertical: 42.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 39.v),
                    Text(
                      "Upload Image",
                      style:
                          CustomTextStyles.bodyMediumRobotoOnPrimaryContainer,
                    ),
                    SizedBox(height: 6.v),
                    Opacity(
                      opacity: 0.5,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTwitter,
                        height: 36.adaptSize,
                        width: 36.adaptSize,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 37.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "Blog Title:",
                    style: CustomTextStyles.labelMediumRoboto,
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              Divider(
                color: appTheme.black90001,
                endIndent: 7.h,
              ),
              SizedBox(height: 26.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Description:",
                  style: CustomTextStyles.labelMediumRoboto,
                ),
              ),
              SizedBox(height: 23.v),
              CustomTextFormField(
                controller: editTextController,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.outlineBlack,
              ),
              SizedBox(height: 62.v),
              CustomElevatedButton(
                height: 46.v,
                width: 154.h,
                text: "Upload post",
                buttonStyle: CustomButtonStyles.fillYellow,
                buttonTextStyle:
                    CustomTextStyles.titleSmallRobotoOnPrimaryContainer,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
