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
    apiKey: 'AIzaSyB1TX3l8eSMlbC5LmNbJad1Z2ZCY1G8ncw',
    appId: '1:535585793113:web:bc7a40638003475ca8bd48',
    messagingSenderId: '535585793113',
    projectId: 'chat-firebase-b7b06',
    authDomain: 'chat-firebase-b7b06.firebaseapp.com',
    storageBucket: 'chat-firebase-b7b06.appspot.com',
    measurementId: 'G-ZQS5XFRMEE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCu25WrXuYjcsg8-muGSX_YWSf06h5JpMQ',
    appId: '1:535585793113:android:77e51b63be85e331a8bd48',
    messagingSenderId: '535585793113',
    projectId: 'chat-firebase-b7b06',
    storageBucket: 'chat-firebase-b7b06.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCk3xB8AgnVdGMz0BZjbdKK9rSsdX3hgDU',
    appId: '1:535585793113:ios:49e2ae0b836fd582a8bd48',
    messagingSenderId: '535585793113',
    projectId: 'chat-firebase-b7b06',
    storageBucket: 'chat-firebase-b7b06.appspot.com',
    androidClientId: '535585793113-ffgluedvaj58cirjub9kqq8g4r4djg5q.apps.googleusercontent.com',
    iosClientId: '535585793113-rbp70qk9d212s6nndds4j5u8k9it02hc.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
