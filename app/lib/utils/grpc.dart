import 'package:grpc/grpc.dart';
import 'package:trackii/generated/auth/auth.pbgrpc.dart';
import 'package:trackii/generated/info/info.pbgrpc.dart';
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

  static StubChannel<AuthServiceClient> get getAuthServiceStubChannel {
    final newChannel = channel;

    return StubChannel<AuthServiceClient>(
      stub: AuthServiceClient(newChannel),
      channel: newChannel,
    );
  }

  static StubChannel<InfoServiceClient> get getInfoServiceStubChannel {
    final newChannel = channel;

    return StubChannel<InfoServiceClient>(
      stub: InfoServiceClient(newChannel),
      channel: newChannel,
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
