// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD_ecUa-DLW4i8IUdp_xQXYJP26IQKOqy8',
    appId: '1:96803702689:web:66e7ca312a8b897961ede0',
    messagingSenderId: '96803702689',
    projectId: 'generic-app-e770d',
    authDomain: 'generic-app-e770d.firebaseapp.com',
    storageBucket: 'generic-app-e770d.appspot.com',
    measurementId: 'G-RC91P46H02',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAJI__g1MZYZ8tATxydIdsN_kWxc5s-Pbc',
    appId: '1:96803702689:android:4d0ea9865b9990a961ede0',
    messagingSenderId: '96803702689',
    projectId: 'generic-app-e770d',
    storageBucket: 'generic-app-e770d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDK2Q8bLoNFLP1Vcmnftgh4vAJiXzEchOM',
    appId: '1:96803702689:ios:cdfaa38803137df661ede0',
    messagingSenderId: '96803702689',
    projectId: 'generic-app-e770d',
    storageBucket: 'generic-app-e770d.appspot.com',
    iosClientId: '96803702689-2uo12h0rqd1cbsj3n3ef0m4ltgdkrvac.apps.googleusercontent.com',
    iosBundleId: 'br.com.cod1ng.generic',
  );
}