import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in_dartio/google_sign_in_dartio.dart';
import 'package:trackii/core/app.dart';
import 'package:trackii/utils/env.dart';
import 'package:trackii/utils/firebase_options.dart';

void main() async {
  await dotenv.load();

  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && Platform.isWindows) {
    await GoogleSignInDart.register(clientId: Env.clientId);
  }

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  doWhenWindowReady(() {
    appWindow.title = 'Trackii';

    appWindow.show();
  });

  runApp(const App());
}
