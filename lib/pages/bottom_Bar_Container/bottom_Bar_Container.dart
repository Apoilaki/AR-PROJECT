// import 'package:christian_vridge_s_application/core/app_export.dart';
// import 'package:christian_vridge_s_application/presentation/home_page/home_page.dart';
// import 'package:christian_vridge_s_application/presentation/home_search_page/home_search_page.dart';
// import 'package:christian_vridge_s_application/presentation/message_page/message_page.dart';
// import 'package:christian_vridge_s_application/presentation/my_home_page/my_home_page.dart';
// import 'package:christian_vridge_s_application/presentation/profile_page/profile_page.dart';
// import 'package:christian_vridge_s_application/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:trial_v3/pages/lesson_1/lesson_1.dart';
import 'package:trial_v3/pages/others/new_next/new_next.dart';
import 'package:trial_v3/pages/others/next_page/next_page.dart';
import 'package:trial_v3/app_essentials/tools/custom_Bottom_Bar.dart';
import 'package:trial_v3/app_essentials/utils/color_Constant.dart';
import 'package:trial_v3/app_essentials/routes/app_route.dart';
import 'package:trial_v3/pages/edit_Profile_Page/edit_Profile_Page.dart';
import 'package:trial_v3/pages/favorite_Page/favorite_Page.dart';
import 'package:trial_v3/pages/profile_Page/profile_Page.dart';
import 'package:trial_v3/pages/home_Page/home_Page.dart';
import 'package:trial_v3/pages/topic_1/topic_1.dart';
import 'package:trial_v3/pages/topic_2/topic_2.dart';
import 'package:trial_v3/pages/topic_3/topic_3.dart';
import 'package:trial_v3/pages/settings_Page/settings_Page.dart';

// ignore_for_file: must_be_immutable
class BottomBarContainer extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  BottomBarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxConstraints = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        //backgroundColor: ColorConstant.gray50,
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoute.home_Page,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
            transitionDuration: const Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, -3),
              ),
            ],
          ),

          child: CustomBottomBar(onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
          }),
        ),
      ),
    );
  }

  /// Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home: return AppRoute.home_Page;
      case BottomBarEnum.Myhome: return AppRoute.next;
      case BottomBarEnum.Profile: return AppRoute.profile_Page;

    // ----------------
      case BottomBarEnum.values: return AppRoute.new_next;
      case BottomBarEnum.values: return AppRoute.topic_1;
      case BottomBarEnum.values: return AppRoute.topic_2;
      case BottomBarEnum.values: return AppRoute.topic_3;
      case BottomBarEnum.values: return AppRoute.favorite_Page;
      case BottomBarEnum.values: return AppRoute.edit_Profile_Page;
      case BottomBarEnum.values: return AppRoute.settings_Page;
      case BottomBarEnum.values: return AppRoute.lesson_1;
    // ----------------

      default: return AppRoute.home_Page;
    }
  }

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoute.home_Page: return const HomePage();
      case AppRoute.next: return const next_page();
      case AppRoute.next: return const next_page();
      case AppRoute.profile_Page: return const ProfilePage();

    // -----------------
      case AppRoute.new_next: return const new_next_page();
      case AppRoute.topic_1: return const Topic1();
      case AppRoute.topic_2: return const Topic2();
      case AppRoute.topic_3: return const Topic3();
      case AppRoute.favorite_Page: return const FavoritePage();
      case AppRoute.edit_Profile_Page: return EditProfilePage();
      case AppRoute.settings_Page: return SettingsPage();
      case AppRoute.lesson_1: return Lesson1Proper();
    // ----------------
      default: return const HomePage();
    }
  }
}

