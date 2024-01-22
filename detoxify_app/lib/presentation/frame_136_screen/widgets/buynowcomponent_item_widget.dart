import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BuynowcomponentItemWidget extends StatelessWidget {
  const BuynowcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 131.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder2,
        ),
        child: Container(
          height: 166.v,
          width: 131.h,
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder2,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle3166x131,
                height: 166.v,
                width: 131.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 28.v,
                      width: 131.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 28.v,
                              width: 131.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray800,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.whiteA7003f,
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(
                                      0,
                                      3.63,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 3.v),
                              child: Text(
                                "Buy Now",
                                style: CustomTextStyles
                                    .titleSmallInterOnPrimaryContainer,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 191.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "Buy Now",
                        style:
                            CustomTextStyles.titleSmallInterOnPrimaryContainer,
                      ),
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
}
