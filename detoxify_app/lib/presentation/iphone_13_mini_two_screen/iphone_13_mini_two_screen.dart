import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone13MiniTwoScreen extends StatelessWidget {
  const Iphone13MiniTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 312.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.h),
                    child: Column(
                      children: [
                        Container(
                          height: 116.v,
                          width: 115.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 17.h,
                            vertical: 37.v,
                          ),
                          decoration: AppDecoration.fillBlack90001.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder58,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUserBlack90001,
                            height: 42.v,
                            width: 79.h,
                            alignment: Alignment.center,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        Text(
                          "Hello!",
                          style: CustomTextStyles.headlineSmallInterBlack90001,
                        ),
                        SizedBox(height: 344.v),
                        Opacity(
                          opacity: 0.7,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHttpsLottief,
                            height: 15.v,
                            width: 29.h,
                            alignment: Alignment.centerLeft,
                          ),
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
}
