import 'package:get/get.dart';
import 'package:tahson/views/entryLog_screen.dart';
import 'package:tahson/views/forgetPassword_screen.dart';
import 'package:tahson/views/home_screen.dart';
import 'package:tahson/views/registerAdmin_screen.dart';
import 'package:tahson/views/registerEmp_screen.dart';
import 'package:tahson/views/splash_screen.dart';

import '../views/login_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginScreen(),
    ),

    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashScreen(),
    ),
    // GetPage(
    //   name: _Paths.EDITPROFILESCREEN,
    //   page: () => EditProfileScreen(),
    // ),
    //   GetPage(
    //   name: _Paths.WELCOMESCREEN,
    //   page: () => WelcomeScreen(),
    // ),
    GetPage(
      name: _Paths.HOMESCREEN,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: _Paths.ENTRYLOGSCREEN,
      page: () => EntryLogsScreen(),
    ),

     GetPage(
      name: _Paths.REGISTERADMINSCREEN,
      page: () => RegisterAdminScreen(),
    ),
       GetPage(
      name: _Paths.REGISTEREMPSCREEN,
      page: () => RegisterEmpScreen(),
    ),
    //   GetPage(
    //   name: _Paths.STARTTESTSCREEN,
    //   page: () => StartTestScreen(),
    // ),
    //  GetPage(
    //   name: _Paths.MANAGESENTENCESSCREEN,
    //   page: () => ManageSentences(),
    // ),
    //   GetPage(
    //   name: _Paths.MANAGEPLANSSCREEN,
    //   page: () => ManagePlans(),
    // ),
    //  GetPage(
    //   name: _Paths.ADMINHOMESCREEN,
    //   page: () => AdminHomeScreen(),
    // ),
    //    GetPage(
    //   name: _Paths.HISTORYSCREEN,
    //   page: () => HistoryScreen(),
    // ),
    //  GetPage(
    //   name: _Paths.RESULTSCREEN,
    //   page: () => ResultScreen(),
    // ),
    GetPage(
      name: _Paths.FORGETPASSWORDSCREEN,
      page: () => ForgetPasswordScreen(),
    ),
  ];
}
