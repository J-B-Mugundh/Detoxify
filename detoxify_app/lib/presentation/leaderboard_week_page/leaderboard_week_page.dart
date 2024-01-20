import '../leaderboard_week_page/widgets/userrowlist_item_widget.dart';
import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LeaderboardWeekPage extends StatefulWidget {
  const LeaderboardWeekPage({Key? key})
      : super(
          key: key,
        );

  @override
  LeaderboardWeekPageState createState() => LeaderboardWeekPageState();
}

class LeaderboardWeekPageState extends State<LeaderboardWeekPage>
    with AutomaticKeepAliveClientMixin<LeaderboardWeekPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0.5),
              end: Alignment(1, 0.5),
              colors: [
                appTheme.deepPurple600,
                appTheme.blueGray900,
              ],
            ),
          ),
          child: Container(
            width: 390.h,
            decoration: AppDecoration.gradientDeepPurpleToBlueGray,
            child: Column(
              children: [
                SizedBox(height: 30.v),
                _buildUserRowList(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserRowList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 5.v,
          );
        },
        itemCount: 7,
        itemBuilder: (context, index) {
          return UserrowlistItemWidget();
        },
      ),
    );
  }
}
