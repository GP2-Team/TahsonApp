import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tahson/routes/app_pages.dart';

class RegisterAdminController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isLoading = false.obs;

  void signUp() async {
    try {
      String name = nameController.text.trim();
      String email = emailController.text.trim();
      String password = passwordController.text.trim();

      if (name.isEmpty || email.isEmpty || password.isEmpty) {
        Get.snackbar('Error', 'All fields are required.',
            snackPosition: SnackPosition.BOTTOM);
        return;
      }

      isLoading.value = true; // Show loading indicator

      // Check if the user already exists
      var existingUser = await FirebaseFirestore.instance
          .collection('users')
          .where('name', isEqualTo: name)
          .get();

      if (existingUser.docs.isNotEmpty) {
        Get.snackbar('Error', 'User with this name already exists.',
            snackPosition: SnackPosition.BOTTOM);
        isLoading.value = false;
        return;
      }

      // Create user in Firestore with role 'admin'
      await FirebaseFirestore.instance.collection('users').add({
        'name': name,
        'email': email,
        'password': password,
        'role': 'admin',
      });

      // Show success message
      Get.snackbar('Success', 'Admin registered successfully.',
          snackPosition: SnackPosition.BOTTOM);

      // Clear the text fields
      nameController.clear();
      emailController.clear();
      passwordController.clear();

      // Navigate back to the login screen
      Get.offNamed(Routes.LOGIN);
    } catch (e) {
      Get.snackbar('Error', 'Failed to sign up: $e',
          snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false; // Hide loading indicator
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
