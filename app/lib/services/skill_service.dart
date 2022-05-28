import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:trackii/generated/skill/skill.pb.dart';
import 'package:trackii/utils/grpc.dart';

class SkillService {
  final stubChannel = Grpc.getSkillServiceStubChannel;

  Future<CreateSkillResponse?> createSkill({
    required CreateSkillRequest request,
  }) async {
    CreateSkillResponse? response;

    try {
      response = await stubChannel.stub.createSkill(
        request,
        options: CallOptions(compression: const GzipCodec()),
      );

      if (kDebugMode) {
        print('SkillService create skill received: \n$response');
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
