import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:grpc/grpc.dart';
import 'package:trackii/generated/skill/skill.pbgrpc.dart';
import 'package:trackii/utils/grpc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const route = '/';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<void> _ping() async {
    // TODO: fix

    final stubChannel = Grpc.getSkillServiceStubChannel;

    const name = 'world';

    try {
      final response = await stubChannel.stub.createSkill(
        CreateSkillRequest()..name = name,
        options: CallOptions(compression: const GzipCodec()),
      );

      if (kDebugMode) {
        print('Greeter client received: ${response.skill}');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Caught error: $e');
      }
    }

    await stubChannel.channel.shutdown();
  }

  Future<void> _login() async {
    // TODO: fix

    // FirebaseAuth.instance.

    final res = await GoogleSignIn().signIn();

    res.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trackii')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: _ping,
              child: const Text('Ping server'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    );
  }
}
