import '../success_stories_home_page/widgets/successstorieshomepage_item_widget.dart';
import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_title.dart';
import 'package:detoxify_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:detoxify_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SuccessStoriesHomePage extends StatelessWidget {
  const SuccessStoriesHomePage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 7.v,
            right: 24.h,
          ),
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 36.v,
              );
            },
            itemCount: 7,
            itemBuilder: (context, index) {
              return SuccessstorieshomepageItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "Success Stories",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPlay40x40,
          margin: EdgeInsets.fromLTRB(12.h, 6.v, 12.h, 9.v),
        ),
      ],
    );
  }
}
