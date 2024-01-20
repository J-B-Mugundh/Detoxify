import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PosttosocialmediaItemWidget extends StatelessWidget {
  const PosttosocialmediaItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 4.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Post to social media ",
        style: TextStyle(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 13.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: false,
      backgroundColor: appTheme.red100,
      selectedColor: appTheme.lightBlue100,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          6.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
