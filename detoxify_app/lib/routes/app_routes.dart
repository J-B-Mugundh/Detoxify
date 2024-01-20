import 'package:flutter/material.dart';
import 'package:detoxify_app/presentation/getting_started_screen/getting_started_screen.dart';
import 'package:detoxify_app/presentation/home_container_screen/home_container_screen.dart';
import 'package:detoxify_app/presentation/upload_story_screen/upload_story_screen.dart';
import 'package:detoxify_app/presentation/frame_screen/frame_screen.dart';
import 'package:detoxify_app/presentation/mark_story_screen/mark_story_screen.dart';
import 'package:detoxify_app/presentation/yuna_lu_profile_tab_container_screen/yuna_lu_profile_tab_container_screen.dart';
import 'package:detoxify_app/presentation/login_screen/login_screen.dart';
import 'package:detoxify_app/presentation/register_screen/register_screen.dart';
import 'package:detoxify_app/presentation/registration_main_screen/registration_main_screen.dart';
import 'package:detoxify_app/presentation/registration_one_screen/registration_one_screen.dart';
import 'package:detoxify_app/presentation/registration_two_screen/registration_two_screen.dart';
import 'package:detoxify_app/presentation/registration_three_screen/registration_three_screen.dart';
import 'package:detoxify_app/presentation/registration_four_screen/registration_four_screen.dart';
import 'package:detoxify_app/presentation/registration_five_screen/registration_five_screen.dart';
import 'package:detoxify_app/presentation/registration_six_screen/registration_six_screen.dart';
import 'package:detoxify_app/presentation/registration_seven_screen/registration_seven_screen.dart';
import 'package:detoxify_app/presentation/registration_eight_screen/registration_eight_screen.dart';
import 'package:detoxify_app/presentation/leaderboard_all_tab_container_screen/leaderboard_all_tab_container_screen.dart';
import 'package:detoxify_app/presentation/mentors_list_screen/mentors_list_screen.dart';
import 'package:detoxify_app/presentation/virtual_assistant_setup_screen/virtual_assistant_setup_screen.dart';
import 'package:detoxify_app/presentation/virtual_assistant_home_screen/virtual_assistant_home_screen.dart';
import 'package:detoxify_app/presentation/medical_assistant_chatbot_screen/medical_assistant_chatbot_screen.dart';
import 'package:detoxify_app/presentation/iphone_13_mini_two_screen/iphone_13_mini_two_screen.dart';
import 'package:detoxify_app/presentation/iphone_13_mini_three_screen/iphone_13_mini_three_screen.dart';
import 'package:detoxify_app/presentation/iphone_13_mini_four_screen/iphone_13_mini_four_screen.dart';
import 'package:detoxify_app/presentation/iphone_13_mini_five_screen/iphone_13_mini_five_screen.dart';
import 'package:detoxify_app/presentation/iphone_13_mini_six_screen/iphone_13_mini_six_screen.dart';
import 'package:detoxify_app/presentation/iphone_13_mini_seven_screen/iphone_13_mini_seven_screen.dart';
import 'package:detoxify_app/presentation/frame_136_screen/frame_136_screen.dart';
import 'package:detoxify_app/presentation/frame_132_screen/frame_132_screen.dart';
import 'package:detoxify_app/presentation/quiz_app_ui_design_screen/quiz_app_ui_design_screen.dart';
import 'package:detoxify_app/presentation/frame_137_screen/frame_137_screen.dart';
import 'package:detoxify_app/presentation/frame_138_screen/frame_138_screen.dart';
import 'package:detoxify_app/presentation/progress_screen_tab_container_screen/progress_screen_tab_container_screen.dart';
import 'package:detoxify_app/presentation/frame_2111_screen/frame_2111_screen.dart';
import 'package:detoxify_app/presentation/screen_five_screen/screen_five_screen.dart';
import 'package:detoxify_app/presentation/screen_three_screen/screen_three_screen.dart';
import 'package:detoxify_app/presentation/screen_four_screen/screen_four_screen.dart';
import 'package:detoxify_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String gettingStartedScreen = '/getting_started_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String uploadStoryScreen = '/upload_story_screen';

  static const String frameScreen = '/frame_screen';

  static const String successStoriesHomePage = '/success_stories_home_page';

  static const String markStoryScreen = '/mark_story_screen';

  static const String yunaLuProfilePage = '/yuna_lu_profile_page';

  static const String yunaLuProfileTabContainerScreen =
      '/yuna_lu_profile_tab_container_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String registrationMainScreen = '/registration_main_screen';

  static const String registrationOneScreen = '/registration_one_screen';

  static const String registrationTwoScreen = '/registration_two_screen';

  static const String registrationThreeScreen = '/registration_three_screen';

  static const String registrationFourScreen = '/registration_four_screen';

  static const String registrationFiveScreen = '/registration_five_screen';

  static const String registrationSixScreen = '/registration_six_screen';

  static const String registrationSevenScreen = '/registration_seven_screen';

  static const String registrationEightScreen = '/registration_eight_screen';

  static const String leaderboardAllPage = '/leaderboard_all_page';

  static const String leaderboardAllTabContainerScreen =
      '/leaderboard_all_tab_container_screen';

  static const String leaderboardWeekPage = '/leaderboard_week_page';

  static const String leaderboardFriendsPage = '/leaderboard_friends_page';

  static const String mentorsListScreen = '/mentors_list_screen';

  static const String virtualAssistantSetupScreen =
      '/virtual_assistant_setup_screen';

  static const String virtualAssistantHomeScreen =
      '/virtual_assistant_home_screen';

  static const String medicalAssistantChatbotScreen =
      '/medical_assistant_chatbot_screen';

  static const String settingsPage = '/settings_page';

  static const String iphone13MiniTwoScreen = '/iphone_13_mini_two_screen';

  static const String iphone13MiniThreeScreen = '/iphone_13_mini_three_screen';

  static const String iphone13MiniFourScreen = '/iphone_13_mini_four_screen';

  static const String iphone13MiniFiveScreen = '/iphone_13_mini_five_screen';

  static const String iphone13MiniSixScreen = '/iphone_13_mini_six_screen';

  static const String iphone13MiniSevenScreen = '/iphone_13_mini_seven_screen';

  static const String frame136Screen = '/frame_136_screen';

  static const String frame132Screen = '/frame_132_screen';

  static const String quizAppUiDesignScreen = '/quiz_app_ui_design_screen';

  static const String frame137Screen = '/frame_137_screen';

  static const String frame138Screen = '/frame_138_screen';

  static const String progressScreenPage = '/progress_screen_page';

  static const String progressScreenTabContainerScreen =
      '/progress_screen_tab_container_screen';

  static const String frame2111Screen = '/frame_2111_screen';

  static const String screenFiveScreen = '/screen_five_screen';

  static const String screenThreeScreen = '/screen_three_screen';

  static const String screenFourScreen = '/screen_four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    gettingStartedScreen: (context) => GettingStartedScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    uploadStoryScreen: (context) => UploadStoryScreen(),
    frameScreen: (context) => FrameScreen(),
    markStoryScreen: (context) => MarkStoryScreen(),
    yunaLuProfileTabContainerScreen: (context) =>
        YunaLuProfileTabContainerScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    registrationMainScreen: (context) => RegistrationMainScreen(),
    registrationOneScreen: (context) => RegistrationOneScreen(),
    registrationTwoScreen: (context) => RegistrationTwoScreen(),
    registrationThreeScreen: (context) => RegistrationThreeScreen(),
    registrationFourScreen: (context) => RegistrationFourScreen(),
    registrationFiveScreen: (context) => RegistrationFiveScreen(),
    registrationSixScreen: (context) => RegistrationSixScreen(),
    registrationSevenScreen: (context) => RegistrationSevenScreen(),
    registrationEightScreen: (context) => RegistrationEightScreen(),
    leaderboardAllTabContainerScreen: (context) =>
        LeaderboardAllTabContainerScreen(),
    mentorsListScreen: (context) => MentorsListScreen(),
    virtualAssistantSetupScreen: (context) => VirtualAssistantSetupScreen(),
    virtualAssistantHomeScreen: (context) => VirtualAssistantHomeScreen(),
    medicalAssistantChatbotScreen: (context) => MedicalAssistantChatbotScreen(),
    iphone13MiniTwoScreen: (context) => Iphone13MiniTwoScreen(),
    iphone13MiniThreeScreen: (context) => Iphone13MiniThreeScreen(),
    iphone13MiniFourScreen: (context) => Iphone13MiniFourScreen(),
    iphone13MiniFiveScreen: (context) => Iphone13MiniFiveScreen(),
    iphone13MiniSixScreen: (context) => Iphone13MiniSixScreen(),
    iphone13MiniSevenScreen: (context) => Iphone13MiniSevenScreen(),
    frame136Screen: (context) => Frame136Screen(),
    frame132Screen: (context) => Frame132Screen(),
    quizAppUiDesignScreen: (context) => QuizAppUiDesignScreen(),
    frame137Screen: (context) => Frame137Screen(),
    frame138Screen: (context) => Frame138Screen(),
    progressScreenTabContainerScreen: (context) =>
        ProgressScreenTabContainerScreen(),
    frame2111Screen: (context) => Frame2111Screen(),
    screenFiveScreen: (context) => ScreenFiveScreen(),
    screenThreeScreen: (context) => ScreenThreeScreen(),
    screenFourScreen: (context) => ScreenFourScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
