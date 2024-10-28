import 'package:doctor/core/routes/routes_name.dart';
import 'package:doctor/pages/serena_gome_page.dart';
import 'package:doctor/pages/appointment_page.dart';
import 'package:doctor/pages/doctors_page.dart';
import 'package:doctor/pages/home_page.dart';
import 'package:doctor/pages/settings_page.dart';
import 'package:doctor/pages/sign_in_page.dart';
import 'package:doctor/pages/sign_up_page.dart';
import 'package:doctor/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (_) {
          return SplashPage();
        });
      case RoutesName.Home:
        return MaterialPageRoute(builder: (_) {
          return HomePage();
        });
      case RoutesName.SignUp:
        return MaterialPageRoute(builder: (_) {
          return SignUpPage();
        });
      case RoutesName.SignIn:
        return MaterialPageRoute(builder: (_) {
          return SignInPage();
        });
      case RoutesName.Appointment:
        return MaterialPageRoute(builder: (_) {
          return AppointmentPage();
        });
      case RoutesName.Doctors:
        return MaterialPageRoute(builder: (_) {
          return DoctorsPage();
        });
      case RoutesName.Serena:
        return MaterialPageRoute(builder: (_) {
          return SerenaGomePage();
        });
      case RoutesName.Setting:
        return MaterialPageRoute(builder: (_) {
          return SettingsPage();
        });
      default:
        throw Exception('Route not found!');
    }
  }
}
