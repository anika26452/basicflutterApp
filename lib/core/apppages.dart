import 'package:basic_ui_withflutter/core/approutes.dart';
import 'package:basic_ui_withflutter/src/Modules/calculator.dart';
import 'package:basic_ui_withflutter/src/Modules/login.dart';
import 'package:basic_ui_withflutter/src/Modules/splashscreen.dart';
import 'package:get/get.dart';

class AppPages {
  static const inititalRoute = Routes.splashScreen;

  static final routes = [
    GetPage(name: Routes.splashScreen, page: () => const SplashScreen()),
    GetPage(name: Routes.loginScreen, page: () => const LoginScreeen()),
    GetPage(name: Routes.calculatorScreen, page: () => const Calculator()),
  ];
}
