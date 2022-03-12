
import 'package:flutter/material.dart';
import 'package:zip_loan/login/page/login_page.dart';
import 'package:zip_loan/shared/pages/splash_page.dart';

class AppRoutes {
  static const String SplashPage = "SplashPage";
  static const String LoginPage = "LoginPage";
}

Map<String, WidgetBuilder> routes = {
  AppRoutes.SplashPage: (context) => SplashPage(),
  AppRoutes.LoginPage: (context) => LoginPage(),

};
