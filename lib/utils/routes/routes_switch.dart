import 'package:flutter/material.dart';
import 'package:fruti_app/features/additional_operations/pages/addition_operations_page.dart';
import 'package:fruti_app/features/home/pages/home_page.dart';
import 'package:fruti_app/features/main/pages/main_page.dart';

class RoutesSwitch {
  static const String mainPage = '/';
  static const String homePage = '/home';
  static const String additionOperations = '/addition_operations';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainPage:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case homePage:
        final user = settings.arguments as String;
        return MaterialPageRoute(builder: (_) => HomePage(user: user));
      case additionOperations:
        return MaterialPageRoute(
          builder: (_) => const AdditionOperationsPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
