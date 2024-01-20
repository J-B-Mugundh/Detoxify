import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class Frame2111Screen extends StatelessWidget {
  const Frame2111Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 282.h,
          padding: EdgeInsets.all(7.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 21.h,
                  vertical: 37.v,
                ),
                decoration: AppDecoration.fillDeeporange200.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Wanna  hear this song?",
                      style: CustomTextStyles.titleMediumInterBlack90001,
                    ),
                    SizedBox(height: 14.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: 29.v,
                      width: 117.h,
                      radius: BorderRadius.circular(
                        12.h,
                      ),
                    ),
                    SizedBox(height: 20.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage3,
                      height: 41.v,
                      width: 213.h,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 13.h,
                        right: 8.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: CustomElevatedButton(
                              height: 25.v,
                              text: "Yes",
                              margin: EdgeInsets.only(right: 22.h),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientIndigoAToPrimaryTL12Decoration,
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimaryContainerMedium,
                            ),
                          ),
                          Expanded(
                            child: CustomElevatedButton(
                              height: 25.v,
                              text: "No",
                              margin: EdgeInsets.only(left: 22.h),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientIndigoAToPrimaryTL12Decoration,
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumOnPrimaryContainerMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
