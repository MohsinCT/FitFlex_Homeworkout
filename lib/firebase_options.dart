// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyAKjsqWIWki_fhe7MvzBc8Zm1U_69XmnFw',
    appId: '1:283460147985:web:f8565868ac6e7eb805cab0',
    messagingSenderId: '283460147985',
    projectId: 'fitflexhomeworkout',
    authDomain: 'fitflexhomeworkout.firebaseapp.com',
    storageBucket: 'fitflexhomeworkout.appspot.com',
    measurementId: 'G-Y50SRB4WLE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyByJhapzQPRFxwFdWUAedSTvtG4Izr0e5Y',
    appId: '1:283460147985:android:6b1c4105df0c50bd05cab0',
    messagingSenderId: '283460147985',
    projectId: 'fitflexhomeworkout',
    storageBucket: 'fitflexhomeworkout.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6rhWQl85W6x5G5aosz64YBHzLROyMpX0',
    appId: '1:283460147985:ios:10b2cf6a7d59bdb405cab0',
    messagingSenderId: '283460147985',
    projectId: 'fitflexhomeworkout',
    storageBucket: 'fitflexhomeworkout.appspot.com',
    iosBundleId: 'com.example.fitflexHomeworkout',
  );
}