import 'package:detoxify_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHomeIcon,
      activeIcon: ImageConstant.imgHomeIcon,
      type: BottomBarEnum.Homeicon,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgExerciseIcon,
      activeIcon: ImageConstant.imgExerciseIcon,
      type: BottomBarEnum.Exerciseicon,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPeopleIcon,
      activeIcon: ImageConstant.imgPeopleIcon,
      type: BottomBarEnum.Peopleicon,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSettingsIcon,
      activeIcon: ImageConstant.imgSettingsIcon,
      type: BottomBarEnum.Settingsicon,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.05),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4.12,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 25.adaptSize,
              width: 25.adaptSize,
              color: appTheme.black90001,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 25.adaptSize,
              width: 25.adaptSize,
              color: appTheme.black90001,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Homeicon,
  Exerciseicon,
  Peopleicon,
  Settingsicon,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
