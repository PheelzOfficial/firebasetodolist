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
        return macos;
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
    apiKey: 'AIzaSyCzDLo3Ym1RgQ13mjhTbUSuzGOfiQuQUYs',
    appId: '1:517616706051:web:4cca31cddaad4def9ee436',
    messagingSenderId: '517616706051',
    projectId: 'fir-todolist-a37cf',
    authDomain: 'fir-todolist-a37cf.firebaseapp.com',
    storageBucket: 'fir-todolist-a37cf.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDu9TRlZsLCs1z281HdIO04OCvy8Pyxt9A',
    appId: '1:517616706051:android:2004fef59ab7b3d59ee436',
    messagingSenderId: '517616706051',
    projectId: 'fir-todolist-a37cf',
    storageBucket: 'fir-todolist-a37cf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBfh5snc8oreAmdQvCCtxR8nAd36ZLw3Cc',
    appId: '1:517616706051:ios:efb90820dec35c309ee436',
    messagingSenderId: '517616706051',
    projectId: 'fir-todolist-a37cf',
    storageBucket: 'fir-todolist-a37cf.appspot.com',
    iosClientId: '517616706051-orfnk8n2iimpqki12fgdi9ja37p0pu20.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebasetodolist',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBfh5snc8oreAmdQvCCtxR8nAd36ZLw3Cc',
    appId: '1:517616706051:ios:efb90820dec35c309ee436',
    messagingSenderId: '517616706051',
    projectId: 'fir-todolist-a37cf',
    storageBucket: 'fir-todolist-a37cf.appspot.com',
    iosClientId: '517616706051-orfnk8n2iimpqki12fgdi9ja37p0pu20.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebasetodolist',
  );
}
