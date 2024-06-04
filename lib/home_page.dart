import 'package:flutter/material.dart';
import 'package:flutter_lovers/models/user_model.dart';
import 'package:flutter_lovers/viewmodel/user_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => _cikisYap(context),
              icon: const Icon(Icons.logout))
        ],
        title: const Text('Ana Sayfa'),
      ),
      body: Center(
        child: Text('Hoşgeldiniz ${user.userID}'),
      ),
    );
  }

  Future<bool> _cikisYap(BuildContext context) async {
    final userModelView = Provider.of<UserViewModel>(context, listen: false);

    bool sonuc = await userModelView.signOut();
    return sonuc;
  }
}
