import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/country.dart';
import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:detoxify_app/widgets/custom_phone_number.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Container(
                            padding: EdgeInsets.only(
                                left: 19.h, top: 72.v, right: 19.h),
                            child: Column(children: [
                              Text("Register",
                                  style: theme.textTheme.headlineSmall),
                              SizedBox(height: 40.v),
                              _buildRegisterStack(context),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 13.h, right: 18.h),
                                  child: CustomPhoneNumber(
                                      country: selectedCountry,
                                      controller: phoneNumberController,
                                      onTap: (Country value) {
                                        selectedCountry = value;
                                      })),
                              SizedBox(height: 10.v),
                              _buildLoginStack3(context),
                              SizedBox(height: 15.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 13.h),
                                  child: CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Password",
                                      hintStyle: CustomTextStyles
                                          .bodyMediumOnErrorContainer,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: Container(
                                          margin: EdgeInsets.only(
                                              left: 30.h,
                                              top: 20.v,
                                              bottom: 20.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEyeOnerrorcontainer,
                                              height: 10.v,
                                              width: 16.h)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 51.v),
                                      obscureText: true,
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 11.v),
                                      borderDecoration: TextFormFieldStyleHelper
                                          .underLineOnErrorContainer,
                                      filled: false)),
                              SizedBox(height: 12.v),
                              CustomElevatedButton(
                                  text: "Register",
                                  margin: EdgeInsets.only(left: 22.h),
                                  buttonStyle: CustomButtonStyles.none,
                                  decoration: CustomButtonStyles
                                      .gradientTealAToPrimaryDecoration,
                                  onPressed: () {
                                    onTapRegister(context);
                                  },
                                  alignment: Alignment.centerRight),
                              SizedBox(height: 17.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 17.h, right: 51.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Opacity(
                                                opacity: 0.5,
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgStroke716,
                                                    height: 8.v,
                                                    width: 4.h,
                                                    margin: EdgeInsets.only(
                                                        top: 5.v,
                                                        bottom: 6.v))),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 55.h),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text:
                                                              "Already have an account?",
                                                          style: CustomTextStyles
                                                              .bodyMediumNunitoSans72090f47),
                                                      TextSpan(
                                                          text: " Login!",
                                                          style: CustomTextStyles
                                                              .bodyMediumNunitoSansffffc618)
                                                    ]),
                                                    textAlign: TextAlign.left))
                                          ]))),
                              SizedBox(height: 17.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildRegisterStack(BuildContext context) {
    return SizedBox(
        height: 50.v,
        width: 311.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          _buildLoginStack(context, password: "Rolex"),
          Align(
              alignment: Alignment.topLeft,
              child: Text("Username",
                  style: CustomTextStyles.bodySmallOverpassOnErrorContainer))
        ]));
  }

  /// Section Widget
  Widget _buildLoginStack3(BuildContext context) {
    return SizedBox(
        height: 55.v,
        width: 311.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Text("Войти",
                  style:
                      CustomTextStyles.titleMediumManropeOnPrimaryContainer)),
          Align(
              alignment: Alignment.bottomCenter,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                _buildLoginStack(context, password: "Email"),
                Divider(
                    color: theme.colorScheme.onErrorContainer.withOpacity(0.1))
              ]))
        ]));
  }

  /// Common widget
  Widget _buildLoginStack(
    BuildContext context, {
    required String password,
  }) {
    return SizedBox(
        height: 50.v,
        width: 311.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle4,
              height: 50.v,
              width: 311.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: Text(password,
                      style: CustomTextStyles.bodyMediumOnErrorContainer
                          .copyWith(
                              color: theme.colorScheme.onErrorContainer
                                  .withOpacity(0.45)))))
        ]));
  }

  /// Navigates to the registrationMainScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrationMainScreen);
  }
}
