import 'package:flutter/material.dart';
import 'package:my_app/pages/auth/login/login.page.dart';
import 'package:my_app/pages/auth/register/register.page.dart';
import 'package:my_app/pages/home/home.page.dart';
import 'package:my_app/pages/splash/splash.page.dart';
import 'package:my_app/pages/splash/splash_v1.page.dart';

class Routes {
  Routes._();
  static const String splash = '/';
  static const String home = '/home';
  static const String splash_v1 = '/v1';
  static const String login = '/login';
  static const String register = '/register';

  static final routes = <String, WidgetBuilder>{
    splash: (_) => const SplashPage(),
    splash_v1: (_) => const SplashV1Page(),
    login: (_) => const LoginPage(),
    register: (_) => const RegisterPage(),
    home: (_) => const HomePage(),
  };
}
