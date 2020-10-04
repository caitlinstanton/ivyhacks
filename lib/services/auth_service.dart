import 'package:firebase_auth/firebase_auth.dart';
import 'package:ivyhack/models/user_model.dart';
import 'package:ivyhack/services/database_service.dart';

class AuthService {
  final FirebaseAuth _authInstance = FirebaseAuth.instance;

  Future register(String email, String password, String name) async {
    try {
      // Create new account on Firebase
      UserCredential result =
          await _authInstance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User firebaseUser = result.user;

      // Create a new Firestore entry for the new account
      await DatabaseService(uid: firebaseUser.uid).updateData(getBlankData(name));

      return firebaseUser;
    } catch (e) {
      print("Error caught");
      print(e.toString());
      return null;
    }
  }

  Future login(String email, String password) async {
    try {
      UserCredential result = await _authInstance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print("Error caught");
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

  Stream<User> get firebaseUser => _authInstance.authStateChanges();

  // Below is the method of getting stream of User objects from Firebase (either null or User)
  // then convert that stream in AppUser objects. No longer used.
  // Stream<AppUser> get appUser =>
  //     _authInstance.authStateChanges().map(_getAppUserFromFirebaseUser);
  // .map((User firebaseUser) => _getAppUserFromFirebaseUser(firebaseUser));
  // ^ This line of code is equivalent to the map part above
}
