import 'package:flutter/material.dart';
import 'package:flutter_project/home.dart';
import 'registered.dart';
import 'placeholder.dart';

class Routes {
  static const String home = '/';
  static const String registered = '/registered';
  static const String placeholder = '/placeholder';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/placeholder':
        return MaterialPageRoute(builder: (_) => const PlaceholderScreen());
      case '/registered':
        return MaterialPageRoute(
          builder: (_) => const RegisteredPage(title: 'registered'),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text('page not found'))),
        );
    }
  }
}
