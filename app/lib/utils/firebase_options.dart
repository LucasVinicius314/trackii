import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:trackii/utils/env.dart';

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
    final apiKey = kIsWeb
        ? Env.webApiKey
        : ({
              TargetPlatform.android: Env.androidApiKey,
              TargetPlatform.windows: Env.androidApiKey,
              TargetPlatform.iOS: Env.iosApiKey,
            }[defaultTargetPlatform] ??
            '');

    return FirebaseOptions(
      apiKey: apiKey,
      appId: Env.appId,
      messagingSenderId: Env.messagingSenderId,
      projectId: Env.projectId,
      authDomain: Env.authDomain,
      iosBundleId: Env.iosBundleId,
      iosClientId: Env.iosClientId,
      storageBucket: Env.storageBucket,
    );
  }
}
