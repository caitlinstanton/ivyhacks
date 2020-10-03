import 'package:firebase_auth/firebase_auth.dart';
import 'package:ivyhack/models/user_model.dart';
import 'package:ivyhack/services/database_service.dart';

class AuthService {
  final FirebaseAuth _authInstance = FirebaseAuth.instance;
  static Map<String, dynamic> currUserData;

  // AppUser _getAppUserFromFirebaseUser(User firebaseUser) =>
  //     firebaseUser == null ? null : AppUser(uid: firebaseUser.uid);

  AppUser _getAppUserFromFirebaseUser(User firebaseUser) {
    if (firebaseUser != null) {
      AppUser appUser = AppUser(uid: firebaseUser.uid);

      // Need to manually load data because data is not stored in auth
      appUser.data = currUserData;
      print("Loaded user ${appUser.data["name"]}");
      return appUser;
    } else {
      return null;
    }
  }

  Future register(String email, String password, String name) async {
    try {
      // Create new account on Firebase
      UserCredential result =
          await _authInstance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      AppUser appUser = _getAppUserFromFirebaseUser(result.user);
      appUser.data["name"] = name;

      // Create a new Firestore entry for the new account
      await DatabaseService(uid: appUser.uid).updateData(appUser);
      updateCurrUserData(appUser.data);

      return appUser;
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
      AppUser appUser = _getAppUserFromFirebaseUser(result.user);
      if (appUser != null) {
        // Get user's data from firestore
        updateCurrUserData(await DatabaseService(uid: appUser.uid).getUserData());

        // TODO: Below may not be needed, since return value of login only used for null check
        appUser.data = currUserData;
      }
      return appUser;
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

  // Gets stream of User objects from Firebase (either null or User)
  // then converts that stream in AppUser objects
  Stream<AppUser> get appUser =>
      _authInstance.authStateChanges().map(_getAppUserFromFirebaseUser);
  // .map((User firebaseUser) => _getAppUserFromFirebaseUser(firebaseUser));
  // ^ This line of code is equivalent to the map part above

  void updateCurrUserData(Map<String, dynamic> newUserData){
    print("Curr User Data updated (user = ${newUserData["name"]})");
    currUserData = newUserData;
  }
}
