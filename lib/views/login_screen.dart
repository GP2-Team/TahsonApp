import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahson/customStyle/appcolors.dart';
import 'package:tahson/controller/login_controller.dart';
import 'package:tahson/customStyle/fonts.dart';
import 'package:tahson/customStyle/images.dart';
import 'package:tahson/routes/app_pages.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                Images.logo,
              
              ),
              TextField(
                controller: controller.usernameC,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 16),
              // Password field
              TextField(
                controller: controller.passwordC,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 24),
              // Login button
              Obx(() => SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: controller.isLoading.value
                          ? null
                          : () => controller.login(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.bondiBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: controller.isLoading.value
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text('Login', style: robotoMediumWhiteBold),
                    ),
                  )),
              SizedBox(height: 16),
              // Optional: Register button
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.FORGETPASSWORDSCREEN);
                },
                child: Text(
                  'Forget Password',
                  style: TextStyle(color: AppColors.bondiBlue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
