import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tahson/routes/app_pages.dart';

class LoginController extends GetxController {
  var usernameC = TextEditingController();
  var passwordC = TextEditingController();
  var isLoading = false.obs;

  // Login function
  void login() async {
    String username = usernameC.text.trim();
    String password = passwordC.text.trim();

    if (username.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please enter both username and password');
      return;
    }

    isLoading.value = true;

    try {
      // Access the Firestore instance
      CollectionReference users =
          FirebaseFirestore.instance.collection('users');

      // Query to find user with matching username and password
      QuerySnapshot querySnapshot = await users
          .where('name', isEqualTo: username)
          .where('password', isEqualTo: password)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        // User found
        // Assuming role is stored in the 'role' field in Firestore
        var userDoc = querySnapshot.docs.first;
        String role = userDoc.get('role'); // Adjust the field name as necessary

        // Store the role in SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('user_role', role);

        // Navigate to the home screen
        Get.toNamed(Routes.HOMESCREEN);
      } else {
        // User not found
        Get.snackbar('Login Failed', 'Invalid username or password');
      }
    } catch (e) {
      Get.snackbar('Error', 'An error occurred. Please try again.');
      print('Error: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
