import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_practices/barber_shop_ui/barber_details_view.dart';
import 'package:flutter_ui_practices/barber_shop_ui/barber_home_view.dart';
import 'package:flutter_ui_practices/dating_app_ui/dating_chats_tab_view.dart';
import 'package:flutter_ui_practices/red_triangle_ui/login_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class TripTravelNavbarView extends StatelessWidget {
  const TripTravelNavbarView({super.key});

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
  return [
    const BarberShopHomeView(),
    BarberDetailsView(
      model: BarberShopModel(
          barberShopUrl:
              "https://static.wixstatic.com/media/f41e18_9a86e8323c924a84ab3bdecc8ab336b4~mv2.jpeg/v1/fit/w_2500,h_1330,al_c/f41e18_9a86e8323c924a84ab3bdecc8ab336b4~mv2.jpeg",
          barberStatus: "OPEN",
          barberShopName: "Elite Barber",
          barberShopLocation: "Copenhag , Denmark",
          barberShopRating: 3.9,
          barberShopReviews: 820,
          isRecommended: false,
          aboutText:
              "Proin ut sem aliquet leo consectetur rutrm eu sit amet lectus. Nunc vitae dapibus quam.Quisque eu barber bibendum eros.Pellentesque sed sapien."),
    ),
    const DatingChatsTabView(),
    const LoginView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.navigation_outlined),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey),
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.book_circle),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey),
    PersistentBottomNavBarItem(
        icon: const Icon(Icons.chat_rounded),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey),
    PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: CupertinoColors.systemGrey),
  ];
}
