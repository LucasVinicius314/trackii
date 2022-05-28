import 'package:flutter/material.dart';
import 'package:trackii/generated/info/info.pb.dart';
import 'package:trackii/modules/main_page.dart';
import 'package:trackii/services/info_service.dart';
import 'package:trackii/widgets/window_scaffold.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const route = '/';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> _verifyVersion() async {
    final response =
        await InfoService().version(request: VersionRequest(version: '0.0.0'));

    if (response == null) {
      return;
    }

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Notice'),
          content: Text(response.message),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).maybePop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _redirect() async {
    await Navigator.of(context).pushReplacementNamed(MainPage.route);
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () async {
      await _verifyVersion();

      await _redirect();
    });
  }

  @override
  Widget build(BuildContext context) {
    return WindowScaffold(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: SizedBox.fromSize(
              size: const Size.square(32),
              child: const CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
