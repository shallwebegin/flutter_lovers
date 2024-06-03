import 'package:flutter/material.dart';
import 'package:flutter_lovers/locator.dart';
import 'package:flutter_lovers/models/user_model.dart';
import 'package:flutter_lovers/services/auth_base.dart';
import 'package:flutter_lovers/services/firebase_auth_service.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.onSignOut, required this.user});

  final VoidCallback onSignOut;
  final UserModel user;
  final AuthBase authService = locator<FirebaseAuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: _cikisYap, icon: const Icon(Icons.logout))
        ],
        title: const Text('Ana Sayfa'),
      ),
      body: Center(
        child: Text('Hoşgeldiniz ${user.userID}'),
      ),
    );
  }

  Future<bool> _cikisYap() async {
    var sonuc = await authService.signOut();
    onSignOut();
    return sonuc;
  }
}
