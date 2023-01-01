import 'package:flutter/material.dart';
import 'package:new_flutter_template/src/constants/constant_colors.dart';

import 'package:new_flutter_template/src/features/codes_screen/presentation/codes_screen.dart';

import 'package:new_flutter_template/src/features/settings_screen/settings_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../features/profile_screen/profile_screen.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 1);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: const [
        SettingsView(),
        CodesScreen(),
        ProfileScreen(),
      ],
      decoration: const NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      backgroundColor: MyColors.navColor,
      items: _navBarsItems(context),
      navBarStyle: NavBarStyle.style7,
    );
  }
}

List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
        inactiveIcon: const Icon(
          Icons.settings,
          color: Colors.white,
        ),
        icon: const Icon(
          Icons.settings,
          color: Colors.black,
        ),
        title: (AppLocalizations.of(context)!.settings),
        textStyle: const TextStyle(fontSize: 14),
        activeColorPrimary: MyColors.activeColor,
        activeColorSecondary: MyColors.navColor),
    PersistentBottomNavBarItem(
        inactiveIcon: const Icon(
          Icons.qr_code,
          color: Colors.white,
        ),
        icon: const Icon(
          Icons.qr_code,
          color: Colors.black,
        ),
        title: (AppLocalizations.of(context)!.mainPageTitle),
        textStyle: const TextStyle(fontSize: 14),
        activeColorPrimary: MyColors.activeColor,
        activeColorSecondary: MyColors.navColor),
    PersistentBottomNavBarItem(
        inactiveIcon: const Icon(
          Icons.person,
          color: Colors.white,
        ),
        icon: const Icon(
          Icons.person,
          color: Colors.black,
        ),
        title: (AppLocalizations.of(context)!.profile),
        textStyle: const TextStyle(fontSize: 14),
        activeColorPrimary: MyColors.activeColor,
        activeColorSecondary: MyColors.navColor),
  ];
}
