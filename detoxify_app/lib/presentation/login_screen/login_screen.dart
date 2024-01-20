import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 27.h,
                  top: 72.v,
                  right: 27.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 117.h),
                      child: Text(
                        "Login",
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    SizedBox(height: 75.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: CustomTextFormField(
                        controller: userNameController,
                        hintText: "Username",
                        prefix: Container(
                          padding: EdgeInsets.fromLTRB(6.h, 5.v, 6.h, 4.v),
                          margin: EdgeInsets.only(
                            top: 13.v,
                            right: 14.h,
                            bottom: 13.v,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: appTheme.gray90001,
                              width: 1.h,
                              strokeAlign: strokeAlignCenter,
                            ),
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLock,
                            height: 16.v,
                            width: 13.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 51.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: 13.v,
                          right: 30.h,
                          bottom: 13.v,
                        ),
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineGray,
                        filled: false,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        right: 3.h,
                      ),
                      child: CustomTextFormField(
                        controller: passwordController,
                        hintText: "Forgot Password",
                        hintStyle: CustomTextStyles.bodySmallPink800,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        prefix: Container(
                          margin: EdgeInsets.only(
                            top: 12.v,
                            right: 30.h,
                            bottom: 14.v,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLockOnerrorcontainer,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 51.v,
                        ),
                        obscureText: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15.v),
                        borderDecoration:
                            TextFormFieldStyleHelper.underLineGray,
                        filled: false,
                      ),
                    ),
                    SizedBox(height: 61.v),
                    CustomElevatedButton(
                      text: "Login",
                      margin: EdgeInsets.only(left: 6.h),
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientTealAToPrimaryDecoration,
                    ),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        right: 65.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                            opacity: 0.5,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgStroke716,
                              height: 8.v,
                              width: 4.h,
                              margin: EdgeInsets.only(
                                top: 5.v,
                                bottom: 6.v,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 64.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "New to App?",
                                    style: CustomTextStyles
                                        .bodyMediumNunitoSans72090f47,
                                  ),
                                  TextSpan(
                                    text: " Register Now!",
                                    style: CustomTextStyles
                                        .bodyMediumNunitoSansffffc618,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
