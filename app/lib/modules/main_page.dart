import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:trackii/generated/auth/auth.pb.dart';
import 'package:trackii/generated/skill/skill.pbgrpc.dart';
import 'package:trackii/services/auth_service.dart';
import 'package:trackii/services/skill_service.dart';
import 'package:trackii/utils/fixnum.dart';
import 'package:trackii/widgets/window_scaffold.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  static const route = '/main';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future<void> _ping() async {
    final response = SkillService().createSkill(
      request: CreateSkillRequest(
        name: 'New skill',
        description: 'New description',
        skillGroupId: int64(0),
      ),
    );
  }

  Future<void> _login() async {
    final oAuthResponse = await GoogleSignIn().signIn();

    if (oAuthResponse == null) {
      return;
    }

    final auth = await oAuthResponse.authentication;

    final response = await AuthService().login(
      request: LoginRequest(
        accessToken: auth.accessToken,
        displayName: oAuthResponse.displayName,
        email: oAuthResponse.email,
        accountId: oAuthResponse.id,
      ),
    );

    if (response == null) {
      return;
    }

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Login successful')));
  }

  @override
  Widget build(BuildContext context) {
    return WindowScaffold(
      child: Scaffold(
        appBar: AppBar(title: const Text('Trackii')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text('aaa'),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: _ping,
                child: const Text('PING SERVER'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: _login,
                child: const Text('LOGIN'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
