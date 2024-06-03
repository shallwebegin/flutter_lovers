import 'package:flutter/material.dart';
import 'package:flutter_lovers/home_page.dart';
import 'package:flutter_lovers/locator.dart';
import 'package:flutter_lovers/models/user_model.dart';
import 'package:flutter_lovers/services/auth_base.dart';
import 'package:flutter_lovers/services/firebase_auth_service.dart';
import 'package:flutter_lovers/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    super.key,
  });

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  UserModel? _user;
  final AuthBase authService = locator<FirebaseAuthService>();
  @override
  void initState() {
    super.initState();
    _checkUser();
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInPage(
        onSignIn: (UserModel user) {
          _updateUser(user);
        },
      );
    } else {
      return HomePage(
        onSignOut: () {
          _updateUser(null);
        },
        user: _user!,
      );
    }
  }

  Future<void> _checkUser() async {
    try {
      UserModel? user = await authService.currentUser();
      setState(() {
        _user = user;
      });
    } catch (e) {
      print('Hata: $e');
      // Eğer hata durumunda kullanıcıya bir mesaj göstermek isterseniz, burada yapabilirsiniz.
    }
  }

  void _updateUser(UserModel? user) {
    setState(() {
      _user = user;
    });
  }
}
