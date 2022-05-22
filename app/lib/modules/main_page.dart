import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:trackii/generated/skill/skill.pbgrpc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const route = '/';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<void> _test() async {
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
      final response = await stub.createSkill(
        CreateSkillRequest()..name = name,
        options: CallOptions(compression: const GzipCodec()),
      );

      print('Greeter client received: ${response.skill}');
    } catch (e) {
      print('Caught error: $e');
    }

    await channel.shutdown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trackii')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: _test,
          child: const Text('Test'),
        ),
      ),
    );
  }
}
