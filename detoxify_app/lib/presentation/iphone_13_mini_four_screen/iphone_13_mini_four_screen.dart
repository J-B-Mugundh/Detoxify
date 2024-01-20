import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone13MiniFourScreen extends StatelessWidget {
  const Iphone13MiniFourScreen({Key? key})
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
            horizontal: 26.h,
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
              SizedBox(height: 8.v),
              Container(
                width: 245.h,
                margin: EdgeInsets.only(right: 77.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 7.v,
                ),
                decoration: AppDecoration.fillGray10002.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4.v),
                    Container(
                      width: 207.h,
                      margin: EdgeInsets.only(right: 11.h),
                      child: Text(
                        "Hey, I am DetoxifyBot. How Can I help you?",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleMediumInterBlack90001Medium
                            .copyWith(
                          height: 1.59,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
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
