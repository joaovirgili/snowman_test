import 'package:flutter/material.dart';
import 'package:snowmanlabs/app/pages/home/home_module.dart';
import 'package:snowmanlabs/app/pages/login/login_module.dart';
import 'package:snowmanlabs/app/shared/constants/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = (settings.arguments as Map<String, dynamic>);

    switch (settings.name) {
      case ROUTE_LOGIN:
        return MaterialPageRoute(builder: (_) => LoginModule());
      case ROUTE_HOME:
        return MaterialPageRoute(
          builder: (_) => HomeModule(),
        );
    }

    return null;
  }
}
