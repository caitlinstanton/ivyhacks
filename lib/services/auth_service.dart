import 'package:firebase_auth/firebase_auth.dart';
import 'package:ivyhack/models/user_model.dart';

class AuthService {
  final FirebaseAuth _authInstance = FirebaseAuth.instance;

  Future loginAnon() async {
    try {
      UserCredential result = await _authInstance.signInAnonymously();
      return _getAppUserFromFirebaseUser(result.user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future logout() async {
    try {
      return await _authInstance.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  AppUser _getAppUserFromFirebaseUser(User firebaseUser) =>
      firebaseUser == null ? null : AppUser(uid: firebaseUser.uid);

  // Gets stream of User objects from Firebase (either null or User)
  // then converts that stream in AppUser objects
  Stream<AppUser> get appUser =>
      _authInstance.authStateChanges().map(_getAppUserFromFirebaseUser);
  // .map((User firebaseUser) => _getAppUserFromFirebaseUser(firebaseUser));
  // ^ This line of code is equivalent to the map part above

}
