import 'package:flutter/material.dart';
import 'package:flutter_lovers/common/custom_buttons/social_login_button.dart';

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
              buttonText: 'Gmail ile oturum açın',
              buttonColor: Colors.grey,
              radius: 16,
              buttonIcon: const Icon(Icons.safety_check),
              onPressed: () {},
            ),
            SocialLoginButton(
              buttonText: 'Google ile oturum açın',
              buttonColor: Colors.orange,
              radius: 16,
              buttonIcon: Image.asset(
                'assets/google.jpg',
                height: 20,
              ),
              onPressed: () {},
            ),
            SocialLoginButton(
              buttonText: 'Facebook ile oturum açın',
              buttonColor: const Color(0xFF334D92),
              radius: 16,
              buttonIcon: Image.asset(
                'assets/facebook.png',
                height: 20,
              ),
              onPressed: () {},
            ),
            SocialLoginButton(
              buttonText: 'Email ve şifre ile oturum açın',
              radius: 16,
              buttonIcon: const Icon(Icons.email),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
