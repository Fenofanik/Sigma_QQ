import 'package:flutter/material.dart';
import 'package:sigma/view/screens/Category_selection.dart';
import 'package:sigma/view/screens/Reg_Screen.dart';
import 'package:sigma/view/screens/Sign_In_Screen.dart';
import 'package:sigma/view/screens/history_screens/My_History_main.dart';
import 'package:sigma/view/screens/history_screens/filter_for_history.dart';
import 'package:sigma/view/screens/splash_screen.dart';
import 'package:sigma/view/screens/Onboarding_screen.dart';
import 'package:sigma/view/screens/un_defined_screen.dart';
import 'package:sigma/view/screens/widgets/bottom_navigation_bar.dart';

import 'constant_routes.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoarding:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case signIn:
        return MaterialPageRoute(builder: (_) => SignInScreen());
      case reg:
        return MaterialPageRoute(builder: (_) => RegScreen());
      case myHistory:
        return MaterialPageRoute(builder: (_) => MyHistoryMain());
      case filterHistory:
        return MaterialPageRoute(builder: (_) => HistoryFilter());
      case category:
        return MaterialPageRoute(builder: (_) => CategorySelection());
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case bottomNavBar:
        return MaterialPageRoute(builder: (_) => MainBottomNavigationBar());
      default:
        return MaterialPageRoute(
          builder: (_) => UndefinedScreen(),
        );
    }
  }
}
