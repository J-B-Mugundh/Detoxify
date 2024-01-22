import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class RegistrationOneScreen extends StatelessWidget {
  RegistrationOneScreen({Key? key})
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
            vertical: 84.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 77.v,
                width: 60.h,
              ),
              SizedBox(height: 37.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 24.v,
                ),
                decoration: AppDecoration.fillBlueA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    SizedBox(
                      width: 227.h,
                      child: Text(
                        "What is the one thing that\n motivates you all the time?",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeBalooChettanGray90004,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 72.v),
              CustomTextFormField(
                controller: dataController,
                hintText: "Type something",
                hintStyle:
                    CustomTextStyles.bodyMediumBarlowCondensedGray90004_1,
                textInputAction: TextInputAction.done,
              ),
              Spacer(),
              SizedBox(height: 43.v),
              CustomImageView(
                imagePath: ImageConstant.imgPlayBlack90001,
                height: 77.v,
                width: 60.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
