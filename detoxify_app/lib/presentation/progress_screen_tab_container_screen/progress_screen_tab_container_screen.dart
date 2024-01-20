import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/presentation/progress_screen_page/progress_screen_page.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProgressScreenTabContainerScreen extends StatefulWidget {
  const ProgressScreenTabContainerScreen({Key? key}) : super(key: key);

  @override
  ProgressScreenTabContainerScreenState createState() =>
      ProgressScreenTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ProgressScreenTabContainerScreenState
    extends State<ProgressScreenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 18.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 650.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [
                            ProgressScreenPage(),
                            ProgressScreenPage()
                          ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftGray90002,
            margin: EdgeInsets.only(left: 30.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Result"),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgSendGray90002,
              margin: EdgeInsets.only(left: 30.h, top: 12.v, right: 12.h)),
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgDetailNavs,
              margin: EdgeInsets.only(left: 15.h, top: 12.v, right: 42.h))
        ]);
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 60.v,
        width: 315.h,
        decoration: BoxDecoration(
            color: appTheme.gray50, borderRadius: BorderRadius.circular(30.h)),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.gray50001,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
            indicatorPadding: EdgeInsets.all(10.0.h),
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20.h),
                gradient: LinearGradient(
                    begin: Alignment(1, 1),
                    end: Alignment(-0.24, -0.31),
                    colors: [appTheme.indigoA100, theme.colorScheme.primary])),
            tabs: [Tab(child: Text("Photo")), Tab(child: Text("Statistic"))]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
