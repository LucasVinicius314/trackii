import 'package:grpc/grpc.dart';
import 'package:trackii/generated/skill/skill.pbgrpc.dart';

class Grpc {
  static ClientChannel get channel {
    return ClientChannel(
      'localhost',
      port: 5284,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(
          codecs: const [GzipCodec(), IdentityCodec()],
        ),
      ),
    );
  }

  static StubChannel<SkillServiceClient> get getSkillServiceStubChannel {
    final newChannel = channel;

    return StubChannel<SkillServiceClient>(
      stub: SkillServiceClient(newChannel),
      channel: newChannel,
    );
  }
}

class StubChannel<T> {
  final T stub;
  final ClientChannel channel;

  const StubChannel({required this.stub, required this.channel});
}
