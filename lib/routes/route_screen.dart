import 'package:flutter/cupertino.dart';
import 'package:medio/models/models.dart';
import 'package:medio/routes/routes.dart';
import 'package:medio/screens/home.dart';

class RouterScreens {
  static final List<MenuOptions> _routes = [
    MenuOptions(route: Routes.home, screen: const HomeScreen())
  ];

  /// Get aviable routes on app
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    final Map<String, Widget Function(BuildContext)> routes = {};
    for (MenuOptions _route in _routes) {
      routes.addAll({_route.route: (BuildContext contex) => _route.screen});
    }
    return routes;
  }
}
