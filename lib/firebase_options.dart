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
    apiKey: 'AIzaSyAmYO12NKPAkV0GnFqnMf5HuHdAahzvthM',
    appId: '1:533228865856:web:f00ec257ed7e172a2f52a5',
    messagingSenderId: '533228865856',
    projectId: 'traingcourse-ed4fd',
    authDomain: 'traingcourse-ed4fd.firebaseapp.com',
    storageBucket: 'traingcourse-ed4fd.appspot.com',
    measurementId: 'G-VKJENNC6NJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQIv6sy1m5VVXNyKMpiHi5LV1K5D1eP9Y',
    appId: '1:533228865856:android:6eac5d73dd72a8e32f52a5',
    messagingSenderId: '533228865856',
    projectId: 'traingcourse-ed4fd',
    storageBucket: 'traingcourse-ed4fd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_ek5ETaG0EkFjpsCluXHpIqGE5gvZAao',
    appId: '1:533228865856:ios:79afc6a73390e55c2f52a5',
    messagingSenderId: '533228865856',
    projectId: 'traingcourse-ed4fd',
    storageBucket: 'traingcourse-ed4fd.appspot.com',
    iosBundleId: 'com.example.newappflutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC_ek5ETaG0EkFjpsCluXHpIqGE5gvZAao',
    appId: '1:533228865856:ios:79afc6a73390e55c2f52a5',
    messagingSenderId: '533228865856',
    projectId: 'traingcourse-ed4fd',
    storageBucket: 'traingcourse-ed4fd.appspot.com',
    iosBundleId: 'com.example.newappflutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAmYO12NKPAkV0GnFqnMf5HuHdAahzvthM',
    appId: '1:533228865856:web:63b3d654902ebc2d2f52a5',
    messagingSenderId: '533228865856',
    projectId: 'traingcourse-ed4fd',
    authDomain: 'traingcourse-ed4fd.firebaseapp.com',
    storageBucket: 'traingcourse-ed4fd.appspot.com',
    measurementId: 'G-R90L6FZB3K',
  );
}