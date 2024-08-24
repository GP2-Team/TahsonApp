import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahson/routes/app_pages.dart';
import 'helper/git_di.dart' as di;
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'customStyle/appcolors.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: AppColors.bondiBlue,
        secondaryHeaderColor: AppColors.atoll,
        backgroundColor: AppColors.mirage,
        // Add more color references here if needed
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASHSCREEN,
      getPages: AppPages.routes,
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final sharedPreferences = await SharedPreferences.getInstance();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDBV9dxEQFurnBGBxDPCaSiu8ewgIgz9KY',
      appId: '1:448246291634:android:d6afaab295fd64f078fdab',
      databaseURL: "https://tahsonapp-default-rtdb.firebaseio.com/",
      messagingSenderId: '448246291634',
      projectId: 'tahsonapp',
      storageBucket: 'tahsonapp.appspot.com',
      authDomain: "tahsonapp.firebaseapp.com",
    ),
  );
  await di.init();
  // await _initializeNotifications();
  runApp(MyApp());
}
