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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAWPBpMFrVvn5bhrLDYTllBzxAoIfvcPYg',
    appId: '1:829036909177:web:47b41c8057ea6d2115faa8',
    messagingSenderId: '829036909177',
    projectId: 'chat-app-7ccbf',
    authDomain: 'chat-app-7ccbf.firebaseapp.com',
    storageBucket: 'chat-app-7ccbf.firebasestorage.app',
    measurementId: 'G-LKVK6GS6HD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDYmwVM747UvskDd3TfxyBJLsrLKQegdk0',
    appId: '1:829036909177:android:c1168ead934362dc15faa8',
    messagingSenderId: '829036909177',
    projectId: 'chat-app-7ccbf',
    storageBucket: 'chat-app-7ccbf.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUGXYF9bVPZPuVoRdUEx2balluS4deU-I',
    appId: '1:829036909177:ios:c66cf603595e1d0615faa8',
    messagingSenderId: '829036909177',
    projectId: 'chat-app-7ccbf',
    storageBucket: 'chat-app-7ccbf.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAUGXYF9bVPZPuVoRdUEx2balluS4deU-I',
    appId: '1:829036909177:ios:c66cf603595e1d0615faa8',
    messagingSenderId: '829036909177',
    projectId: 'chat-app-7ccbf',
    storageBucket: 'chat-app-7ccbf.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAWPBpMFrVvn5bhrLDYTllBzxAoIfvcPYg',
    appId: '1:829036909177:web:696a319d47d08e9515faa8',
    messagingSenderId: '829036909177',
    projectId: 'chat-app-7ccbf',
    authDomain: 'chat-app-7ccbf.firebaseapp.com',
    storageBucket: 'chat-app-7ccbf.firebasestorage.app',
    measurementId: 'G-9X5DTEH7W0',
  );
}
