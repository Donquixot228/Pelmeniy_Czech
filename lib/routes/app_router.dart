

import 'package:flutter/material.dart';
import 'package:pelmeniy_czech/models/models.dart';
import 'package:pelmeniy_czech/pages/pages.dart';

class AppRouter{
  static Route onGenerateRoute(RouteSettings settings){
    print('This is route: ${settings.name}');

    switch (settings.name){
      case HomePage.routeName:
        return HomePage.route();
      case CatalogPage.routeName:
        return CatalogPage.route(category: settings.arguments as Category);
      default:
        return _errorRoute();
    }
  }
  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
    );
  }
}