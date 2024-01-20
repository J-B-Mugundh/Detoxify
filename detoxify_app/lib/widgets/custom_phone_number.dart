import 'package:country_pickers/country.dart';
import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  const CustomPhoneNumber({Key? key, required Country country, required TextEditingController controller, required Null Function(Country value) onTap})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 1.v,
          width: 311.h,
          margin: EdgeInsets.only(bottom: 66.v),
          decoration: BoxDecoration(
            color: theme.colorScheme.onErrorContainer.withOpacity(0.1),
          ),
        ),
      ],
    );
  }
}
