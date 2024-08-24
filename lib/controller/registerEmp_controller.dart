import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterEmpController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final employeeIdController = TextEditingController();

  void signUp() async {
    try {
      String name = nameController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();
      String employeeId = employeeIdController.text.trim();

      if (name.isEmpty ||
          email.isEmpty ||
          password.isEmpty ||
          employeeId.isEmpty) {
        Get.snackbar('Error', 'All fields are required.',
            snackPosition: SnackPosition.BOTTOM);
        return;
      }

      // Create user in Firestore with role 'admin'
      await FirebaseFirestore.instance.collection('users').add({
        'name': name,
        'email': email,
        'password': password,
        'employeeId': employeeIdController,
        'role': 'emp',
      });

      // Show success message
      Get.snackbar('Success', 'Employee Registered successfully.',
          snackPosition: SnackPosition.BOTTOM);

      // Optionally, navigate to another screen
      // Get.offNamed('/home');
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign up: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
