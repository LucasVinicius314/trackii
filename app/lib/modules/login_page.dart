import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:trackii/generated/auth/auth.pb.dart';
import 'package:trackii/generated/skill/skill.pbgrpc.dart';
import 'package:trackii/services/auth_service.dart';
import 'package:trackii/services/skill_service.dart';
import 'package:trackii/utils/breakpoints.dart';
import 'package:trackii/utils/fixnum.dart';
import 'package:trackii/widgets/window_scaffold.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const route = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

    final userCredential = await FirebaseAuth.instance
        .signInWithCredential(GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken: auth.idToken,
    ));

    // final response = await AuthService().login(
    //   request: LoginRequest(
    //     accessToken: auth.accessToken,
    //     displayName: oAuthResponse.displayName,
    //     email: oAuthResponse.email,
    //     accountId: oAuthResponse.id,
    //   ),
    // );

    // if (response == null) {
    //   return;
    // }

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Login successful')));
  }

  @override
  Widget build(BuildContext context) {
    return WindowScaffold(
      child: Scaffold(
        appBar: AppBar(title: const Text('Trackii')),
        body: Row(
          children: [
            Expanded(
              child: Container(color: Colors.grey.shade900),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints.loose(
                        const Size.fromWidth(Breakpoints.sm),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              'Welcome to Trackii!',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text(
                              'For now, you can only login with Google.',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: ElevatedButton.icon(
                              onPressed: _login,
                              label: const Text('LOGIN'),
                              icon: const Icon(MdiIcons.google),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
