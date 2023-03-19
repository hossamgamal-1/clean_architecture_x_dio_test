import 'package:clean_architecture_test/presentation/screens/app_page.dart';
import 'package:clean_architecture_test/presentation/screens/initial_page.dart';
import 'package:flutter/material.dart';

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
