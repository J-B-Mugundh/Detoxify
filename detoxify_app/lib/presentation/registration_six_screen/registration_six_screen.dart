import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegistrationSixScreen extends StatelessWidget {
  RegistrationSixScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 18.h,
            vertical: 21.v,
          ),
          child: Column(
            children: [
              Container(
                height: 6.v,
                width: 100.h,
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
                    value: 0.8,
                    backgroundColor: appTheme.gray10007,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      appTheme.gray90004,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 75.v),
              CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 77.v,
                width: 60.h,
              ),
              SizedBox(height: 55.v),
              _buildWhatContributesText(context),
              SizedBox(height: 55.v),
              CustomTextFormField(
                controller: dataController,
                hintText: "Type something",
                hintStyle:
                    CustomTextStyles.bodyMediumBarlowCondensedGray90004_1,
                textInputAction: TextInputAction.done,
              ),
              Spacer(
                flex: 43,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPlayBlack90001,
                height: 77.v,
                width: 60.h,
              ),
              Spacer(
                flex: 56,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWhatContributesText(BuildContext context) {
    return Container(
      width: 316.h,
      margin: EdgeInsets.only(
        left: 13.h,
        right: 10.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Container(
            width: 239.h,
            margin: EdgeInsets.only(right: 15.h),
            child: Text(
              "    What contributes to your\n    physical and mental fitness ?",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeBalooChettanBlack9000118,
            ),
          ),
        ],
      ),
    );
  }
}
