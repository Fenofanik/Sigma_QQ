import 'package:get/get.dart';
import 'package:sigma/view/OnBoardingScreen.dart';
import 'package:sigma/view/Reg_Screen.dart';
import 'package:sigma/view/SignInScreen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/SIgnInScreen', page: () => SIgnInScreen()),
    GetPage(name: '/Reg', page: () => RegScreen()),
    GetPage(name: '/FirstScreen', page: () => FirstScreen())
  ];
}