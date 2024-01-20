import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone13MiniSixScreen extends StatelessWidget {
  const Iphone13MiniSixScreen({Key? key})
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 11.v),
              Container(
                height: 88.v,
                width: 85.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 17.h,
                  vertical: 19.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup3,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgComponent7,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 12.v),
              Text(
                "Searching..",
                style: CustomTextStyles.bodyLargeInterGray600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
