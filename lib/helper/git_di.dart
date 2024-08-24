import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tahson/controller/forgetPassword_controller.dart';
import 'package:tahson/controller/home_controller.dart';
import 'package:tahson/controller/login_controller.dart';

Future init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences, fenix: true);
  Get.lazyPut(() => LoginController(), fenix: true);

  Get.lazyPut(() => ForgotPasswordController(), fenix: true);
  Get.lazyPut(() => HomeController(), fenix: true);
}
