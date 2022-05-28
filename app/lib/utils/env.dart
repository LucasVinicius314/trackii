import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static final webApiKey = dotenv.maybeGet('WEB_API_KEY') ??
      const String.fromEnvironment('WEB_API_KEY');

  static final androidApiKey = dotenv.maybeGet('ANDROID_API_KEY') ??
      const String.fromEnvironment('ANDROID_API_KEY');

  static final iosApiKey = dotenv.maybeGet('IOS_API_KEY') ??
      const String.fromEnvironment('IOS_API_KEY');

  static final appId =
      dotenv.maybeGet('APP_ID') ?? const String.fromEnvironment('APP_ID');

  static final messagingSenderId = dotenv.maybeGet('MESSAGING_SENDER_ID') ??
      const String.fromEnvironment('MESSAGING_SENDER_ID');

  static final projectId = dotenv.maybeGet('PROJECT_ID') ??
      const String.fromEnvironment('PROJECT_ID');

  static final storageBucket = dotenv.maybeGet('STORAGE_BUCKET') ??
      const String.fromEnvironment('STORAGE_BUCKET');

  static final iosClientId = dotenv.maybeGet('IOS_CLIENT_ID') ??
      const String.fromEnvironment('IOS_CLIENT_ID');

  static final iosBundleId = dotenv.maybeGet('IOS_BUNDLE_ID') ??
      const String.fromEnvironment('IOS_BUNDLE_ID');

  static final authDomain = dotenv.maybeGet('AUTH_DOMAIN') ??
      const String.fromEnvironment('AUTH_DOMAIN');

  static final clientId =
      dotenv.maybeGet('CLIENT_ID') ?? const String.fromEnvironment('CLIENT_ID');
}
