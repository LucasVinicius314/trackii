import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:trackii/generated/skill.pbgrpc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const route = '/';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        child: const Text('Test'),
        onPressed: () async {
          // TODO: fix

          final channel = ClientChannel(
            'localhost',
            port: 5284,
            options: ChannelOptions(
              credentials: const ChannelCredentials.insecure(),
              codecRegistry:
                  CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
            ),
          );

          final stub = SkillServiceClient(channel);

          const name = 'world';

          try {
            final response = await stub.getSkill(
              SkillRequest()..name = name,
              options: CallOptions(compression: const GzipCodec()),
            );

            print('Greeter client received: ${response.message}');
          } catch (e) {
            print('Caught error: $e');
          }

          await channel.shutdown();
        },
      ),
    );
  }
}
