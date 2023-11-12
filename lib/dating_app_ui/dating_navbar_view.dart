import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/dating_app_ui/dating_home_view.dart';
import 'package:flutter_ui_practices/red_triangle_ui/login_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DatingNavbarView extends StatelessWidget {
  const DatingNavbarView({super.key});

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
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
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
  return [const DatingHomeView(), const LoginView(), const LoginView(), const LoginView(), const LoginView()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        title: "Home"),
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.book_circle),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        title: 'Booking'),
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        title: 'Setting'),
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.calendar),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        title: 'Calendar'),
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        title: 'Profile'),
  ];
}
