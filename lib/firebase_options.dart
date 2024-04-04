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
    apiKey: 'AIzaSyCUjHXIgJ0P4GXmBHiLGFcBuMMtjjjO5D0',
    appId: '1:591696846659:web:d644c32a2f8104312119f6',
    messagingSenderId: '591696846659',
    projectId: 'chat-gemini-ai',
    authDomain: 'chat-gemini-ai.firebaseapp.com',
    storageBucket: 'chat-gemini-ai.appspot.com',
    measurementId: 'G-51521WQ2WR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAbHuf_ymDaE8D0vbiFfZh4xu0FGb8Z6V8',
    appId: '1:591696846659:android:bad3562681874f862119f6',
    messagingSenderId: '591696846659',
    projectId: 'chat-gemini-ai',
    storageBucket: 'chat-gemini-ai.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDhWqwXiz2ay51fOYKbc3OTFB97Rdp6rZo',
    appId: '1:591696846659:ios:d68321afa8d6a13b2119f6',
    messagingSenderId: '591696846659',
    projectId: 'chat-gemini-ai',
    storageBucket: 'chat-gemini-ai.appspot.com',
    iosBundleId: 'com.example.chatAi',
  );
}
