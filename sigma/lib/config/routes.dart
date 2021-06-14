import 'package:get/get.dart';
import 'package:sigma/view/screens/Category_selection.dart';
import 'package:sigma/view/screens/On_Boarding_Screen.dart';
import 'package:sigma/view/screens/Reg_Screen.dart';
import 'package:sigma/view/screens/Sign_In_Screen.dart';
import 'package:sigma/view/screens/otp_verification_screen.dart';
import 'package:sigma/view/screens/test_onBoard_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/SignInScreen', page: () => SignInScreen()),
    GetPage(name: '/Reg', page: () => RegScreen()),
    GetPage(name: '/OnBoardingScreen', page: () => OnBoardingScreen()),
    GetPage(name: '/OnBoard', page: () => TestOnBoardingScreen()),
    GetPage(name: '/Otp', page: () => OtpVerificationScreen()),
    GetPage(name: '/CategorySelection', page: ()=>CategorySelection()),
  ];
}
