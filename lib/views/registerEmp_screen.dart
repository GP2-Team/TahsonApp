import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahson/controller/registerEmp_controller.dart';
import 'package:tahson/customStyle/appcolors.dart';
import 'package:tahson/customStyle/fonts.dart';
import 'package:tahson/customStyle/images.dart';

class RegisterEmpScreen extends GetView<RegisterEmpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      backgroundColor: Colors.grey[300],

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Images.logo,
              ),
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
                controller: controller.employeeIdController,
                decoration: InputDecoration(
                  labelText: 'Employee_ID',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: Icon(Icons.numbers_outlined),
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
                child: Obx(() {
                  return controller.isLoading.value
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () => controller.signUp(),
                          child: Text(
                            'Register',
                            style: robotoMediumWhiteBold,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                AppColors.bondiBlue, // button color
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 12),
                          ),
                        );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
