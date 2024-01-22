import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/presentation/home_page/home_page.dart';
import 'package:detoxify_app/presentation/settings_page/settings_page.dart';
import 'package:detoxify_app/presentation/success_stories_home_page/success_stories_home_page.dart';
import 'package:detoxify_app/presentation/yuna_lu_profile_page/yuna_lu_profile_page.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class YunaLuProfileTabContainerScreen extends StatefulWidget {
  const YunaLuProfileTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  YunaLuProfileTabContainerScreenState createState() =>
      YunaLuProfileTabContainerScreenState();
}

class YunaLuProfileTabContainerScreenState
    extends State<YunaLuProfileTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.v),
              _buildWidget(context),
              SizedBox(height: 10.v),
              _buildLogin(context),
              _buildTabBarView(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 39.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 413.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcon,
        margin: EdgeInsets.fromLTRB(23.h, 21.v, 374.h, 21.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidget(BuildContext context) {
    return Container(
      height: 185.v,
      width: 370.h,
      margin: EdgeInsets.only(left: 3.h),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImageLarge,
            height: 126.v,
            width: 370.h,
            radius: BorderRadius.circular(
              8.h,
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 100.adaptSize,
              width: 100.adaptSize,
              margin: EdgeInsets.only(right: 124.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    radius: BorderRadius.circular(
                      50.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 100.adaptSize,
                    width: 100.adaptSize,
                    radius: BorderRadius.circular(
                      50.h,
                    ),
                    alignment: Alignment.center,
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
  Widget _buildLogin(BuildContext context) {
    return Container(
      height: 337.v,
      width: 335.h,
      margin: EdgeInsets.only(left: 19.h),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Войти",
              style: CustomTextStyles.titleMediumManropeOnPrimaryContainer,
            ),
          ),
          Opacity(
            opacity: 0.4,
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 25.adaptSize,
              width: 25.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                top: 11.v,
                right: 19.h,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Yuna Lu",
                    style: CustomTextStyles.headlineSmallRubikBluegray90003,
                  ),
                ),
                SizedBox(height: 11.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "San Francisco",
                        style: CustomTextStyles.bodyLargeGray60002,
                      ),
                      SizedBox(
                        height: 19.v,
                        width: 99.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "184 following",
                                style: CustomTextStyles.bodyLargeGray60002,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "184 following",
                                style: CustomTextStyles.bodyLargeGray60002,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "611 followers",
                        style: CustomTextStyles.bodyLargeGray60002,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  height: 136.v,
                  width: 304.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 304.h,
                          child: Text(
                            "🕊️ Liberated from addiction | 🌟 Sobriety Warrior | 💪 Embracing the journey | 🤝 Advocate for recovery | 📚 Turning pages, rewriting my story | 🌻 Spreading hope & positivity | #BreakFree #RecoveryRoad #NewBeginnings",
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyLarge!.copyWith(
                              height: 1.38,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 304.h,
                          child: Text(
                            "🕊️ Liberated from addiction | 🌟 Sobriety Warrior | 💪 Embracing the journey | 🤝 Advocate for recovery | 📚 Turning pages, rewriting my story | 🌻 Spreading hope & positivity | #BreakFree #RecoveryRoad #NewBeginnings",
                            maxLines: 6,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyLarge!.copyWith(
                              height: 1.38,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(right: 24.h),
                  child: Row(
                    children: [
                      Container(
                        width: 70.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 6.v,
                        ),
                        decoration: AppDecoration.outlinePurple.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Text(
                          "friendly",
                          style: CustomTextStyles.bodyMediumRubikGray90005,
                        ),
                      ),
                      Container(
                        width: 81.h,
                        margin: EdgeInsets.only(left: 8.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlinePurple.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Text(
                          "exploring",
                          style: CustomTextStyles.bodyMediumRubikGray90005,
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.only(left: 8.h),
                        color: appTheme.gray100,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: appTheme.purple50,
                            width: 1.h,
                          ),
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Container(
                          height: 32.v,
                          width: 62.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 9.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.outlinePurple.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder15,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "eating",
                                  style:
                                      CustomTextStyles.bodyMediumRubikGray90005,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "eating",
                                  style:
                                      CustomTextStyles.bodyMediumRubikGray90005,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 74.h,
                        margin: EdgeInsets.only(left: 8.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.outlinePurple.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Text(
                          "napping",
                          style: CustomTextStyles.bodyMediumRubikGray90005,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28.v),
                Container(
                  height: 28.v,
                  width: 220.h,
                  margin: EdgeInsets.only(left: 4.h),
                  child: TabBar(
                    controller: tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.gray800,
                    labelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                    ),
                    unselectedLabelColor: appTheme.gray800,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 16.fSize,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                    ),
                    indicatorColor: appTheme.amber300,
                    tabs: [
                      Tab(
                        child: Text(
                          "My posts",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Likes",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Bookmarks",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Bookmarks",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Войти",
              style: CustomTextStyles.titleMediumManropeOnPrimaryContainer,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 13.v),
              child: Text(
                "Yuna Lu",
                style: CustomTextStyles.headlineSmallRubikBluegray90003,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 39.h),
      height: 141.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          YunaLuProfilePage(),
          YunaLuProfilePage(),
          YunaLuProfilePage(),
          YunaLuProfilePage(),
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
