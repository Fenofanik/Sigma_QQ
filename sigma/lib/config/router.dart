import 'package:flutter/material.dart';
import 'package:sigma/view/screens/sign_In_screens/Category_selection.dart';
import 'package:sigma/view/screens/sign_In_screens/Reg_Screen.dart';
import 'package:sigma/view/screens/sign_In_screens/Sign_In_Screen.dart';
import 'package:sigma/view/screens/history_screens/My_History_screen.dart';
import 'package:sigma/view/screens/history_screens/filter_for_history.dart';
import 'package:sigma/view/screens/sign_In_screens/category_test.dart';
import 'package:sigma/view/screens/sign_In_screens/otp_verification_screen.dart';
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
        return MaterialPageRoute(builder: (_) => MyHistory());
      case filterHistory:
        return MaterialPageRoute(builder: (_) => HistoryFilter());
      case category:
        return MaterialPageRoute(builder: (_) => CategorySelection());
      case splash:
        return MaterialPageRoute(builder: (_) => Splash());
      case bottomNavBar:
        return MaterialPageRoute(builder: (_) => MainBottomNavigationBar());
      case otp:
        return MaterialPageRoute(builder: (_) => SmsScreen());
      case testCategory:
        return MaterialPageRoute(builder: (_) => TestCategory());
      default:
        return MaterialPageRoute(
          builder: (_) => UndefinedScreen(),
        );
    }
  }
}
