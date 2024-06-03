import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_lovers/models/user_model.dart';
import 'package:flutter_lovers/services/auth_base.dart';

class FirebaseAuthService implements AuthBase {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<UserModel> currentUser() async {
    try {
      User? user = _firebaseAuth.currentUser;
      if (user != null) {
        return _userFromFirebase(user)!;
      } else {
        throw Exception('Kullanıcı bulunamadı.');
      }
    } catch (e) {
      throw Exception('Hata: $e');
    }
  }

  UserModel? _userFromFirebase(User? user) {
    if (user == null) {
      return null;
    } else {
      return UserModel(userID: user.uid);
    }
  }

  @override
  Future<UserModel> signInAnonymously() async {
    try {
      UserCredential sonuc = await _firebaseAuth.signInAnonymously();
      return _userFromFirebase(sonuc.user)!;
    } catch (e) {
      print('Anonim giriş Hata: $e');
      throw Exception('Anonim Giriş hatası');
    }
  }

  @override
  Future<bool> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } catch (e) {
      print('Sign Out Hata: $e');
      return false;
    }
  }
}
