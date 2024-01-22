import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

class RegistrationEightScreen extends StatelessWidget {
  const RegistrationEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 49.h,
            top: 188.v,
            right: 49.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSettingsBlack9000196x90,
                height: 96.v,
                width: 90.h,
              ),
              SizedBox(height: 23.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillBlueA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    SizedBox(
                      width: 187.h,
                      child: Text(
                        "We're preparing your custom practice plan...",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeBalooChettanGray90004,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 81.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 11.v),
                      child: Container(
                        height: 6.v,
                        width: 220.h,
                        decoration: BoxDecoration(
                          color: appTheme.gray10007,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.77,
                            backgroundColor: appTheme.gray10007,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              appTheme.gray90004,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "75%",
                      style: CustomTextStyles.titleLargeBalooChettanGray90004,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
