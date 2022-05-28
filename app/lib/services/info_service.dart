import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:trackii/generated/info/info.pb.dart';
import 'package:trackii/utils/grpc.dart';

class InfoService {
  final stubChannel = Grpc.getInfoServiceStubChannel;

  Future<VersionResponse?> version({
    required VersionRequest request,
  }) async {
    VersionResponse? response;

    try {
      response = await stubChannel.stub.version(
        request,
        options: CallOptions(compression: const GzipCodec()),
      );

      if (kDebugMode) {
        print('InfoService version received: \n$response');
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
