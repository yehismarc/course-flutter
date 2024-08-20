import 'package:fl_components/screens/alert_screen.dart';
import 'package:fl_components/screens/card_screen.dart';
import 'package:fl_components/screens/home_screen.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:fl_components/screens/listview2_screen.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRouters {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_outlined),
    MenuOption(route: 'listview1', name: 'Listview 1', screen: const ListView1Screen(), icon: Icons.list),
    MenuOption(route: 'listview2', name: 'Listview 2', screen: const ListView2Screen(), icon: Icons.list_alt),
    MenuOption(route: 'alert', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card', name: 'Card Screen', screen: const CardScreen(), icon: Icons.add_card)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
      
    for( final option in menuOptions ) {
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }
    
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }

}