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
    apiKey: 'AIzaSyDsp_gAoXusG3xDeBqcAs1Wvht4mq35m_c',
    appId: '1:159664010513:web:eba94aa2cf1ad15cf6c8b0',
    messagingSenderId: '159664010513',
    projectId: 'iron-body-3dcfd',
    authDomain: 'iron-body-3dcfd.firebaseapp.com',
    storageBucket: 'iron-body-3dcfd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAKURvXZRU6BvqYQGi7HZUGtgYHUTRskyU',
    appId: '1:159664010513:android:c13439b55886c571f6c8b0',
    messagingSenderId: '159664010513',
    projectId: 'iron-body-3dcfd',
    storageBucket: 'iron-body-3dcfd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDmWS9eku1uKL-RgQwD7PwDRdMbwrPuk5w',
    appId: '1:159664010513:ios:2b29bfacd49cf4d2f6c8b0',
    messagingSenderId: '159664010513',
    projectId: 'iron-body-3dcfd',
    storageBucket: 'iron-body-3dcfd.appspot.com',
    iosClientId: '159664010513-2naj3fsp58eur7rmh4fhml4e6s72vn37.apps.googleusercontent.com',
    iosBundleId: 'com.mycompany.ironbody',
  );
}