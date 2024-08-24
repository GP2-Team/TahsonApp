import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahson/customStyle/appcolors.dart';
import 'package:tahson/controller/forgetPassword_controller.dart';
import 'package:tahson/customStyle/fonts.dart';

class ForgetPasswordScreen extends GetView<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Forgot Password', style: robotoHugeWhite,),
        backgroundColor: AppColors.bondiBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Enter your name to reset your password',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                SizedBox(height: 40),
                // Email field
                TextField(
                  controller: controller.emailC,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 24),
                // Submit button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => controller.resetPassword(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.bondiBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text('Send Request', style: robotoMediumWhiteBold),
                  ),
                ),
                SizedBox(height: 16),
                // Back to login button
                TextButton(
                  onPressed: () {
                    Get.back(); // Go back to the previous screen
                  },
                  child: Text(
                    'Back to Login',
                    style: TextStyle(color: AppColors.bondiBlue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
