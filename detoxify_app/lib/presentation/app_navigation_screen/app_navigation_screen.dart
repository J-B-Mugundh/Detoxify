import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Getting started",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.gettingStartedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HOME - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Upload story",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.uploadStoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.frameScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mark story",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.markStoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Yuna Lu Profile - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.yunaLuProfileTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Register",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration Main",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationMainScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration-One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration-Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration-Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration-Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration-Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration-Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration-Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Registration-Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.registrationEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Leaderboard - All - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.leaderboardAllTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "mentors list",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mentorsListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Virtual Assistant Setup",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.virtualAssistantSetupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Virtual Assistant Home",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.virtualAssistantHomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Medical assistant ChatBot",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.medicalAssistantChatbotScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 mini - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone13MiniTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 mini - Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone13MiniThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 mini - Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone13MiniFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 mini - Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone13MiniFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 mini - Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone13MiniSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 13 mini - Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone13MiniSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 136",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame136Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 132",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame132Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Quiz App UI Design",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.quizAppUiDesignScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 137",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame137Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 138",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame138Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Progress Screen - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.progressScreenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Frame 2111",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.frame2111Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Screen Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.screenFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.screenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Screen Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.screenFourScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
