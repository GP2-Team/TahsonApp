import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahson/controller/registerAdmin_controller.dart';
import 'package:tahson/customStyle/appcolors.dart';
import 'package:tahson/customStyle/fonts.dart';
import 'package:tahson/customStyle/images.dart';

class RegisterAdminScreen extends GetView<RegisterAdminController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.grey[300],

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Images.logo,
                ),
                SizedBox(height: 16),
                TextField(
                  controller: controller.nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: controller.emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: controller.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: Icon(Icons.password),
                  ),
                ),
                SizedBox(height: 24),
                Center(
                  child: controller.isLoading.value
                      ? CircularProgressIndicator() // Show loading indicator
                      : ElevatedButton(
                          onPressed: () => controller.signUp(),
                          child: Text(
                            'Register',
                            style: robotoMediumWhiteBold,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.bondiBlue, // button color
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                          ),
                        ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
