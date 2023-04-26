import 'package:flutter/material.dart';

import '../presentation/screens/app_page.dart';
import '../presentation/screens/initial_page.dart';

class RouteNames {
  static const String initialPageRoute = '/';
  static const String appRoute = '/app';
}

class AppRouter {
  static Route getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.initialPageRoute:
        return MaterialPageRoute(builder: (context) => const InitialPage());
      case RouteNames.appRoute:
        return MaterialPageRoute(builder: (context) => const AppPage());
      default:
        return MaterialPageRoute(builder: (context) => const InitialPage());
    }
  }
}
