import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone13MiniThreeScreen extends StatelessWidget {
  const Iphone13MiniThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 15.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              CustomIconButton(
                height: 40.v,
                width: 39.h,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.fillBlack,
                child: CustomImageView(
                  imagePath: ImageConstant.imgUserBlack90001,
                ),
              ),
              SizedBox(height: 11.v),
              Opacity(
                opacity: 0.7,
                child: CustomImageView(
                  imagePath: ImageConstant.imgHttpsLottief,
                  height: 15.v,
                  width: 29.h,
                  margin: EdgeInsets.only(left: 5.h),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
