import 'package:flutter/material.dart';
import 'package:hotelsgo_task/Core/routes/base_routes.dart';
import 'package:hotelsgo_task/Features/Home_View/view/home_page.dart';

abstract class AppRouter {
  static const String homePage = "homePage";

  static Route<void> onGenerateRoute(RouteSettings settings) {
    //var args = settings.arguments; //! Not used
    switch (settings.name) {
      case homePage:
        return BaseRoute(const HomePage());

      default:
        return BaseRoute(const HomePage());
    }
  }
}
