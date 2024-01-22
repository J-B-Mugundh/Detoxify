import 'package:detoxify_app/core/app_export.dart';
import 'package:detoxify_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProgressScreenPage extends StatefulWidget {
  const ProgressScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProgressScreenPageState createState() => ProgressScreenPageState();
}

class ProgressScreenPageState extends State<ProgressScreenPage>
    with AutomaticKeepAliveClientMixin<ProgressScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(
                  children: [
                    _buildGraphData(context),
                    SizedBox(height: 29.v),
                    _buildMonthData(context),
                    SizedBox(height: 13.v),
                    Text(
                      "Lose Weight",
                      style: CustomTextStyles.bodyMediumGray90002,
                    ),
                    SizedBox(height: 8.v),
                    _buildWeightProgress(context),
                    SizedBox(height: 21.v),
                    Text(
                      "Height Increase",
                      style: CustomTextStyles.bodyMediumGray90002,
                    ),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        right: 11.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "88%",
                            style: theme.textTheme.bodySmall,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 5.h,
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              child: Container(
                                height: 10.v,
                                width: 243.h,
                                decoration: BoxDecoration(
                                  color: appTheme.redA700,
                                  borderRadius: BorderRadius.circular(
                                    5.h,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    5.h,
                                  ),
                                  child: LinearProgressIndicator(
                                    value: 0.13,
                                    backgroundColor: appTheme.redA700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "12%",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Text(
                      "Muscle Mass Increase",
                      style: CustomTextStyles.bodyMediumGray90002,
                    ),
                    SizedBox(height: 10.v),
                    _buildMuscleProgress(context),
                    SizedBox(height: 19.v),
                    Text(
                      "Abs",
                      style: CustomTextStyles.bodyMediumGray90002,
                    ),
                    SizedBox(height: 10.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        right: 11.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "89%",
                            style: theme.textTheme.bodySmall,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 3.h,
                                top: 4.v,
                                bottom: 3.v,
                              ),
                              child: Container(
                                height: 10.v,
                                width: 244.h,
                                decoration: BoxDecoration(
                                  color: appTheme.redA700,
                                  borderRadius: BorderRadius.circular(
                                    5.h,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    5.h,
                                  ),
                                  child: LinearProgressIndicator(
                                    value: 0.16,
                                    backgroundColor: appTheme.redA700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "11%",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 23.v),
                    CustomElevatedButton(
                      text: "Back to Home",
                      buttonStyle: CustomButtonStyles.none,
                      decoration: CustomButtonStyles
                          .gradientIndigoAToPrimaryTL30Decoration,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumOnPrimaryContainer16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGraphData(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5.v),
          child: Column(
            children: [
              SizedBox(
                height: 120.v,
                width: 283.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: SizedBox(
                          width: 283.h,
                          child: Divider(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.v),
                        child: SizedBox(
                          width: 283.h,
                          child: Divider(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 57.v),
                        child: SizedBox(
                          width: 283.h,
                          child: Divider(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 35.v),
                        child: SizedBox(
                          width: 283.h,
                          child: Divider(),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 7.v),
                        child: SizedBox(
                          width: 283.h,
                          child: Divider(),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector99,
                      height: 66.v,
                      width: 281.h,
                      alignment: Alignment.bottomCenter,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVector100,
                      height: 100.v,
                      width: 283.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 3.v),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 73.h,
                          right: 38.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.h,
                          vertical: 6.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup50,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 59.v),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 9.v,
                              ),
                              decoration:
                                  AppDecoration.outlineGray90011.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "62% increase",
                                    style: CustomTextStyles.bodySmallGreen50001,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowRightGreen50001,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin: EdgeInsets.only(top: 2.v),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 19.v),
              Divider(),
              SizedBox(height: 7.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jan",
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      "Feb",
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      "Mar",
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      "Apr",
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      "May",
                      style: CustomTextStyles.labelLargeDeeppurpleA100,
                    ),
                    Text(
                      "Jun",
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      "Jul",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 4.h,
            bottom: 19.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "100%",
                  style: CustomTextStyles.bodySmall10,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "80%",
                  style: CustomTextStyles.bodySmall10,
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "60%",
                style: CustomTextStyles.labelMediumDeeppurpleA100,
              ),
              SizedBox(height: 12.v),
              Text(
                "40%",
                style: CustomTextStyles.bodySmall10,
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "20%",
                  style: CustomTextStyles.bodySmall10,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  "0%",
                  style: CustomTextStyles.bodySmall10,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMonthData(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            "May",
            style: CustomTextStyles.titleMediumGray60005,
          ),
        ),
        Text(
          "June",
          style: CustomTextStyles.titleMediumGray60005,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWeightProgress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "33%",
            style: theme.textTheme.bodySmall,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 4.v,
                bottom: 3.v,
              ),
              child: Container(
                height: 10.v,
                width: 243.h,
                decoration: BoxDecoration(
                  color: appTheme.redA700,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                  child: LinearProgressIndicator(
                    value: 0.81,
                    backgroundColor: appTheme.redA700,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "67%",
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMuscleProgress(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 6.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "57%",
            style: theme.textTheme.bodySmall,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                top: 4.v,
                bottom: 3.v,
              ),
              child: Container(
                height: 10.v,
                width: 243.h,
                decoration: BoxDecoration(
                  color: appTheme.redA700.withOpacity(0.46),
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                  child: LinearProgressIndicator(
                    value: 0.6,
                    backgroundColor: appTheme.redA700.withOpacity(0.46),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "43%",
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
