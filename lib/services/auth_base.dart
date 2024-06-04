import 'package:flutter_lovers/models/user_model.dart';

abstract class AuthBase {
  Future<UserModel?> currentUser();
  Future<UserModel?> signInAnonymously();
  Future<bool?> signOut();
}
