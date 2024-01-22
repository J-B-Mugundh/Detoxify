import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class YunaLuProfilePage extends StatefulWidget {
  const YunaLuProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  YunaLuProfilePageState createState() => YunaLuProfilePageState();
}

class YunaLuProfilePageState extends State<YunaLuProfilePage>
    with AutomaticKeepAliveClientMixin<YunaLuProfilePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 414.h,
          margin: EdgeInsets.only(right: 39.h),
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 22.h,
                    right: 75.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgPlay40x40,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            margin: EdgeInsets.only(top: 1.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Yuna",
                                  style: CustomTextStyles.bodyLargeGray9000518,
                                ),
                                SizedBox(height: 1.v),
                                SizedBox(
                                  height: 19.v,
                                  width: 113.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "@spicyyunaroll",
                                          style: CustomTextStyles
                                              .bodyLargeGray50002,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "@spicyyunaroll",
                                          style: CustomTextStyles
                                              .bodyLargeGray50002,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 13.v),
                      SizedBox(
                        height: 44.v,
                        width: 278.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 278.h,
                                child: Text(
                                  "Sleep in Sunday is the best day of the week! #sunspot",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyLargeGray90005
                                      .copyWith(
                                    height: 1.38,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                width: 278.h,
                                child: Text(
                                  "Sleep in Sunday is the best day of the week! #sunspot",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyLargeGray90005
                                      .copyWith(
                                    height: 1.38,
                                  ),
                                ),
                              ),
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
      ),
    );
  }
}
