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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqyj9ErfKPG6PHrJ4oV_6ikKxHaX1cdR8',
    appId: '1:236481845312:android:085e430b6cba58e63327a5',
    messagingSenderId: '236481845312',
    projectId: 'vasflix-6a69e',
    storageBucket: 'vasflix-6a69e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAn4kduuZsUxQDdXNNDdA4wjC-epawqiCA',
    appId: '1:236481845312:ios:449336fc16ce52343327a5',
    messagingSenderId: '236481845312',
    projectId: 'vasflix-6a69e',
    storageBucket: 'vasflix-6a69e.appspot.com',
    androidClientId: '236481845312-hdr8n7j0bgl17gi4trba84bfcu5fvmh3.apps.googleusercontent.com',
    iosClientId: '236481845312-j4gj6m7ipbevthul92bq3s73pvribh7n.apps.googleusercontent.com',
    iosBundleId: 'com.example.vasflixApp',
  );
}