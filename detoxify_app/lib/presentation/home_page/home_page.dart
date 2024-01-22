import '../home_page/widgets/cardtodayactivity_item_widget.dart';
import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:detoxify_app/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 983.v,
                width: 380.h,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgVisual01,
                      height: 983.v,
                      width: 380.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.center,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 13.v),
                        _buildAppBar(context),
                        SizedBox(height: 49.v),
                        Expanded(
                            child: SingleChildScrollView(
                                child: Container(
                                    margin: EdgeInsets.only(bottom: 22.v),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 9.h),
                                    child: Column(children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.h),
                                              child: Text("Hello, Adam Smith",
                                                  style: theme.textTheme
                                                      .headlineSmall))),
                                      SizedBox(height: 6.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 8.h),
                                          child: CustomSearchView(
                                              controller: searchController,
                                              hintText: "Search")),
                                      SizedBox(height: 47.v),
                                      _buildQuizCard(context),
                                      SizedBox(height: 40.v),
                                      _buildStoryCard(context),
                                      SizedBox(height: 16.v),
                                      SizedBox(
                                          height: 9.v,
                                          width: 53.h,
                                          child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgTelevisionOnprimarycontainer,
                                                    height: 9.v,
                                                    width: 53.h,
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgGroup10302,
                                                    height: 3.v,
                                                    width: 15.h,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    margin: EdgeInsets.only(
                                                        left: 3.h))
                                              ])),
                                      SizedBox(height: 25.v),
                                      _buildRecommendationClass(context),
                                      SizedBox(height: 16.v),
                                      _buildCardTodayActivity(context)
                                    ]))))
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 32.v,
        leadingWidth: 379.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIcon,
            margin: EdgeInsets.fromLTRB(16.h, 9.v, 347.h, 9.v)));
  }

  /// Section Widget
  Widget _buildQuizCard(BuildContext context) {
    return SizedBox(
        height: 118.v,
        width: 342.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        SizedBox(
                            height: 116.v,
                            width: 124.h,
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 116.v,
                                      width: 124.h,
                                      decoration: BoxDecoration(
                                          color: appTheme.deepPurple300,
                                          borderRadius:
                                              BorderRadius.circular(15.h)))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 33.h, top: 6.v, right: 38.h),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text("Quiz",
                                                style: theme
                                                    .textTheme.headlineSmall),
                                            SizedBox(height: 7.v),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgFluentQuizNew24Filled,
                                                height: 37.v,
                                                width: 41.h)
                                          ])))
                            ])),
                        Spacer(flex: 85),
                        SizedBox(
                            height: 116.v,
                            width: 124.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 116.v,
                                          width: 124.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.green50001,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      15.h)))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgBookOpen01,
                                      height: 38.v,
                                      width: 39.h,
                                      alignment: Alignment.bottomCenter,
                                      margin: EdgeInsets.only(bottom: 25.v),
                                      onTap: () {
                                        onTapImgBookOpenOne(context);
                                      })
                                ])),
                        Spacer(flex: 14),
                        GestureDetector(
                            onTap: () {
                              onTapPillDate(context);
                            },
                            child: Container(
                                height: 116.v,
                                width: 124.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius: BorderRadius.circular(15.h))))
                      ])))),
          Align(
              alignment: Alignment.centerRight,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 187.h, bottom: 2.v),
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        SizedBox(
                            height: 116.v,
                            width: 124.h,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 116.v,
                                          width: 124.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.amber600,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      15.h)))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 13.h,
                                              top: 9.v,
                                              right: 13.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text("Chatbot",
                                                    style: theme.textTheme
                                                        .headlineSmall),
                                                SizedBox(height: 9.v),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgTablerMessageChatbot,
                                                    height: 34.v,
                                                    width: 36.h)
                                              ])))
                                ])),
                        CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 38.v,
                            width: 39.h,
                            margin: EdgeInsets.only(
                                left: 265.h, top: 55.v, bottom: 23.v))
                      ])))),
          Align(
              alignment: Alignment.topRight,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 387.h, top: 6.v, bottom: 77.v),
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 2.v),
                            child: Text("Stories",
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineSmall)),
                        Padding(
                            padding: EdgeInsets.only(left: 82.h, top: 2.v),
                            child: Text("Stories",
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineSmall))
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildStoryCard(BuildContext context) {
    return SizedBox(
        height: 118.v,
        width: 337.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.centerRight,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 184.h, top: 2.v),
                  child: IntrinsicWidth(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        SizedBox(
                            height: 116.v,
                            width: 124.h,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          height: 116.v,
                                          width: 124.h,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 42.h, vertical: 30.v),
                                          decoration: AppDecoration.fillLime
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder15),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgSettingsBlueGray90001,
                                              height: 39.v,
                                              width: 38.h,
                                              alignment:
                                                  Alignment.bottomCenter))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(top: 4.v),
                                          child: Text("Consult",
                                              style: theme
                                                  .textTheme.headlineSmall)))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 241.h, top: 6.v, bottom: 77.v),
                            child: Text("Stories",
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineSmall))
                      ])))),
          Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                      child: GestureDetector(
                          onTap: () {
                            onTapSTORYCARD(context);
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 116.v,
                                    width: 124.h,
                                    margin: EdgeInsets.only(bottom: 2.v),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 116.v,
                                                  width: 124.h,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.h)))),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 19.h,
                                                      top: 6.v,
                                                      right: 19.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text("Stories",
                                                            style: theme
                                                                .textTheme
                                                                .headlineSmall),
                                                        SizedBox(height: 13.v),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgSettings,
                                                            height: 38.v,
                                                            width: 39.h)
                                                      ])))
                                        ])),
                                Container(
                                    height: 116.v,
                                    width: 124.h,
                                    margin: EdgeInsets.only(left: 406.h),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 116.v,
                                                  width: 124.h,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15.h)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSettings,
                                              height: 38.v,
                                              width: 39.h,
                                              alignment: Alignment.bottomCenter,
                                              margin:
                                                  EdgeInsets.only(bottom: 25.v))
                                        ]))
                              ])))))
        ]));
  }

  /// Section Widget
  Widget _buildRecommendationClass(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 14.h, right: 31.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommendation Class",
                      style: CustomTextStyles.titleMediumInterOnError),
                  Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Text("See all",
                          style:
                              CustomTextStyles.labelLargeInterLightblue40001))
                ])));
  }

  /// Section Widget
  Widget _buildCardTodayActivity(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 13.v);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return CardtodayactivityItemWidget();
            }));
  }

  /// Navigates to the markStoryScreen when the action is triggered.
  onTapImgBookOpenOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.markStoryScreen);
  }

  /// Navigates to the markStoryScreen when the action is triggered.
  onTapPillDate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.markStoryScreen);
  }

  /// Navigates to the markStoryScreen when the action is triggered.
  onTapSTORYCARD(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.markStoryScreen);
  }
}
