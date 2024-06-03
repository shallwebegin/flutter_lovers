import 'package:flutter/material.dart';
import 'package:flutter_lovers/common/custom_buttons/social_login_button.dart';
import 'package:flutter_lovers/locator.dart';
import 'package:flutter_lovers/models/user_model.dart';
import 'package:flutter_lovers/services/auth_base.dart';
import 'package:flutter_lovers/services/firebase_auth_service.dart';

class SignInPage extends StatelessWidget {
  SignInPage({
    super.key,
    required this.onSignIn,
  });
  final Function(UserModel) onSignIn;
  final AuthBase authService = locator<FirebaseAuthService>();

  void _misafirGirisi() async {
    UserModel user = await authService.signInAnonymously();
    onSignIn(user);
    print('Oturum açan user id : ${user.userID}');
  }

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
              buttonText: 'Misafir girişi ile oturum açın',
              buttonColor: Colors.grey,
              radius: 16,
              buttonIcon: const Icon(Icons.safety_check),
              onPressed: () {
                _misafirGirisi();
              },
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
