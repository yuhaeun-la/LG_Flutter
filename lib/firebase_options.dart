// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCZlfqQTqyw3mkJrcWfLhW9gGSCYK_NwYk',
    appId: '1:1058980256767:web:7a9e11a9dd8fda0b2065ca',
    messagingSenderId: '1058980256767',
    projectId: 'littleguardian-4711e',
    authDomain: 'littleguardian-4711e.firebaseapp.com',
    storageBucket: 'littleguardian-4711e.appspot.com',
    measurementId: 'G-EHCGR46G4Q',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDopeqXNRXHSFdl_sKHsx11ChJWatfuSZo',
    appId: '1:1058980256767:android:217898562acfc1992065ca',
    messagingSenderId: '1058980256767',
    projectId: 'littleguardian-4711e',
    storageBucket: 'littleguardian-4711e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyABGig86w63YJ0qCQ4Io7C7wIWjyOE7OpI',
    appId: '1:1058980256767:ios:5e2469fff7d00bdf2065ca',
    messagingSenderId: '1058980256767',
    projectId: 'littleguardian-4711e',
    storageBucket: 'littleguardian-4711e.appspot.com',
    iosBundleId: 'com.example.littleGuardian',
  );
}