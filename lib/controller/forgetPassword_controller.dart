
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final emailC = TextEditingController();

  void resetPassword() {
    // Implement password reset logic
    print('Email: ${emailC.text}');
    // Show a confirmation message
    Get.snackbar('Password Reset', 'Instructions sent to ${emailC.text}');
  }
}
