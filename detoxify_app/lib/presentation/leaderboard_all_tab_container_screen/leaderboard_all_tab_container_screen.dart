import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/presentation/leaderboard_all_page/leaderboard_all_page.dart';
import 'package:flutter/material.dart';

class LeaderboardAllTabContainerScreen extends StatefulWidget {
  const LeaderboardAllTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LeaderboardAllTabContainerScreenState createState() =>
      LeaderboardAllTabContainerScreenState();
}

class LeaderboardAllTabContainerScreenState
    extends State<LeaderboardAllTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0.5),
              end: Alignment(1, 0.5),
              colors: [
                appTheme.deepPurple600,
                appTheme.blueGray900,
              ],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 844.v,
                width: 390.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse1,
                      height: 350.v,
                      width: 390.h,
                      alignment: Alignment.topCenter,
                    ),
                    _buildLeaderboards(context),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 20.h,
                          right: 20.h,
                          bottom: 18.v,
                        ),
                        decoration: AppDecoration.outlineBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder15,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildTabview(context),
                            SizedBox(
                              height: 476.v,
                              child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  LeaderboardAllPage(),
                                  LeaderboardAllPage(),
                                  LeaderboardAllPage(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLeaderboards(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 360.v,
        width: 390.h,
        padding: EdgeInsets.symmetric(
          horizontal: 32.h,
          vertical: 41.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup227,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 94.h,
                  right: 98.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Leaderboards",
                      style: CustomTextStyles
                          .titleMediumOnPrimaryContainerSemiBold,
                    ),
                    Text(
                      "October 13 - 18, 2021 ",
                      style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 216.v,
                width: 321.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 48.v),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 137.v,
                                  width: 95.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgStar8,
                                        height: 95.adaptSize,
                                        width: 95.adaptSize,
                                        radius: BorderRadius.circular(
                                          8.h,
                                        ),
                                        alignment: Alignment.bottomCenter,
                                        margin: EdgeInsets.only(bottom: 17.v),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 11.h),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              _buildStar(
                                                context,
                                                text: "2",
                                              ),
                                              SizedBox(height: 64.v),
                                              Text(
                                                "Andrew B.",
                                                style: CustomTextStyles
                                                    .bodyMediumOnPrimaryContainer14,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "187.01",
                                  style: CustomTextStyles.titleSmallAmber600,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 204.v,
                            width: 220.h,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    height: 186.v,
                                    width: 125.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgStar5,
                                          height: 125.adaptSize,
                                          width: 125.adaptSize,
                                          radius: BorderRadius.circular(
                                            8.h,
                                          ),
                                          alignment: Alignment.topCenter,
                                          margin: EdgeInsets.only(top: 25.v),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 35.h),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                _buildStar(
                                                  context,
                                                  text: "1",
                                                ),
                                                SizedBox(height: 112.v),
                                                Text(
                                                  "213.78",
                                                  style: CustomTextStyles
                                                      .titleSmallAmber600,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 18.v),
                                            child: Text(
                                              "Jessica J.",
                                              style: CustomTextStyles
                                                  .bodyMediumOnPrimaryContainer14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: SizedBox(
                                    height: 156.v,
                                    width: 95.h,
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgStar7,
                                          height: 95.adaptSize,
                                          width: 95.adaptSize,
                                          radius: BorderRadius.circular(
                                            8.h,
                                          ),
                                          alignment: Alignment.topCenter,
                                          margin: EdgeInsets.only(top: 25.v),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 15.v),
                                            child: Text(
                                              "Brad T.",
                                              style: CustomTextStyles
                                                  .bodyMediumOnPrimaryContainer14,
                                            ),
                                          ),
                                        ),
                                        _buildStar(
                                          context,
                                          text: "3",
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Text(
                                            "150.24",
                                            style: CustomTextStyles
                                                .titleSmallAmber600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgSettingsRed600,
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 17.v),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 50.v,
                      width: 54.h,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 3.h),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgProfile,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 7.v),
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 40.v,
      width: 315.h,
      decoration: BoxDecoration(
        color: appTheme.deepPurple700,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionOnprimarycontainer14x14,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "A",
                          style: CustomTextStyles.labelLargeffffffff,
                        ),
                        TextSpan(
                          text: "ll",
                          style: CustomTextStyles.labelLargeffffffffMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionOnprimarycontainer14x14,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "This Week",
                  ),
                ),
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionOnprimarycontainer14x14,
                  height: 14.adaptSize,
                  width: 14.adaptSize,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "Friends",
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
  Widget _buildStar(
    BuildContext context, {
    required String text,
  }) {
    return SizedBox(
      height: 55.adaptSize,
      width: 55.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStar66,
            height: 55.adaptSize,
            width: 55.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: CustomTextStyles.titleMediumBlack90001.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
