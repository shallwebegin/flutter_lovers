import 'package:flutter/material.dart';
import 'package:flutter_lovers/common/social_login_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Flutter Lover'),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Oturum Açın',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            const SizedBox(
              height: 8,
            ),
            SocialLoginButton(
              buttonText: 'Facebook ile oturum açın',
              buttonColor: Color(0xFF334D92),
              radius: 16,
              buttonIcon: Icon(Icons.safety_check),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
