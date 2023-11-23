import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/dating_app_ui/dating_chats_tab_view.dart';
import 'package:flutter_ui_practices/gymnation_ui/gymnation_explore_view.dart';
import 'package:flutter_ui_practices/red_triangle_ui/login_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class GymnationNavbarView extends StatelessWidget {
  const GymnationNavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: const Color(0xff242424), // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: const Color(0xff242424),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [const GymnationExploreView(), const LoginView(), const DatingChatsTabView(), const LoginView()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.globe),
        activeColorPrimary: Colors.yellow,
        inactiveColorPrimary: Colors.white,
        title: "Explore"),
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.cube),
        activeColorPrimary: Colors.yellow,
        inactiveColorPrimary: Colors.white,
        title: "Classes"),
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.doc_chart_fill),
        activeColorPrimary: Colors.yellow,
        inactiveColorPrimary: Colors.white,
        title: "Advice"),
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        activeColorPrimary: Colors.yellow,
        inactiveColorPrimary: Colors.white,
        title: "Profile"),
  ];
}
