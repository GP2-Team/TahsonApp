import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      // case TargetPlatform.iOS:
      //   return ios;
      // case TargetPlatform.macOS:
      //   return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDHp48k2IkBqgcnfZsZa_nut7Y95f73bK0',
    appId: '1:310791667606:android:a5770eb132ce7bc633a7b7',
    databaseURL: "https://mancoverhole-default-rtdb.firebaseio.com",
    messagingSenderId: '310791667606',
    projectId: 'mancoverhole',
    storageBucket: 'mancoverhole.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHp48k2IkBqgcnfZsZa_nut7Y95f73bK0',
    appId: '1:310791667606:android:a5770eb132ce7bc633a7b7',
    databaseURL: "https://mancoverhole-default-rtdb.firebaseio.com",
    messagingSenderId: '310791667606',
    projectId: 'mancoverhole',
    storageBucket: 'mancoverhole.appspot.com',
  );
}
