import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     title: 'Home Screen',
    //     icon: Icons.home_outlined,
    //     route: 'home',
    //     screen: const HomeScreen()),
    MenuOption(
        title: 'Alert Screen',
        icon: Icons.warning_amber_outlined,
        route: 'alert',
        screen: const AlertScreen()),
    MenuOption(
        title: 'ListViwe1 Screen',
        icon: Icons.auto_awesome_motion_outlined,
        route: 'listview1',
        screen: const ListView1Screen()),
    MenuOption(
        title: 'ListViwe2 Screen',
        icon: Icons.auto_awesome_mosaic_outlined,
        route: 'listview2',
        screen: const ListView2Screen()),
    MenuOption(
        title: 'Card Screen',
        icon: Icons.credit_card_outlined,
        route: 'card',
        screen: const CardScreen()),
    MenuOption(
        title: 'Avatar Screen',
        icon: Icons.account_circle_outlined,
        route: 'avatar',
        screen: const AvatarScreen()),
    MenuOption(
        title: 'Animated Screen',
        icon: Icons.animation_outlined,
        route: 'animated',
        screen: const AnimatedScreen()),
    MenuOption(
        title: 'Inputs Screen',
        icon: Icons.input_outlined,
        route: 'inputs',
        screen: const InputsScreen()),
    MenuOption(
        title: 'Slider Screen',
        icon: Icons.slideshow_outlined,
        route: 'slider',
        screen: const SliderScreen()),
    MenuOption(
        title: 'Infinite scroll and pull refresh',
        icon: Icons.list_alt_outlined,
        route: 'listview_builder',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({
      'home': (_) => const HomeScreen(),
    });

    for (final option in menuOptions) {
      appRoutes[option.route] = (_) => option.screen;
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (_) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const HomeScreen(),
    );
  }
}
