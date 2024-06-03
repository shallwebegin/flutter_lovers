import 'package:flutter_lovers/models/user_model.dart';
import 'package:flutter_lovers/services/auth_base.dart';

class FakeAuthService implements AuthBase {
  final String userID = '1234123213';

  @override
  Future<UserModel> currentUser() async {
    return await Future.value(UserModel(userID: userID));
  }

  @override
  Future<UserModel> signInAnonymously() async {
    return await Future.delayed(
      const Duration(seconds: 2),
      () => UserModel(userID: userID),
    );
  }

  @override
  Future<bool> signOut() async {
    return Future.value(true);
  }
}
