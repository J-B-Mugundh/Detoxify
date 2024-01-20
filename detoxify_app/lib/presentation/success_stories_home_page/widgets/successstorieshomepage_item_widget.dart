import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SuccessstorieshomepageItemWidget extends StatelessWidget {
  SuccessstorieshomepageItemWidget({Key? key})
      : super(
          key: key,
        );

  TextEditingController group1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      width: 326.h,
      controller: group1Controller,
      hintText: "Blog",
      maxLines: 4,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 21.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillOrange,
      fillColor: appTheme.orange200,
    );
  }
}
