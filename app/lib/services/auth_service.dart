import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:trackii/generated/auth/auth.pb.dart';
import 'package:trackii/utils/grpc.dart';

class AuthService {
  final stubChannel = Grpc.getAuthServiceStubChannel;

  Future<LoginResponse?> login({
    required LoginRequest request,
  }) async {
    LoginResponse? response;

    try {
      response = await stubChannel.stub.login(
        request,
        options: CallOptions(compression: const GzipCodec()),
      );

      if (kDebugMode) {
        print('AuthService login received: \n$response');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Caught error: $e');
      }
    }

    await stubChannel.channel.shutdown();

    return response;
  }
}
