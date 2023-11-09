import 'package:authentication_repository/src/errors/login_with_email_and_password_error.dart';
import 'package:authentication_repository/src/errors/login_with_google_error.dart';
import 'package:authentication_repository/src/errors/logout_error.dart';
import 'package:authentication_repository/src/errors/signup_with_email_and_password_error.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';

/// {@template authentication_repository}
/// Class that managees user authentication
/// {@endtemplate}
class AuthenticationRepository {
  AuthenticationRepository({
    firebase_auth.FirebaseAuth? firebaseAuth,
    GoogleSignIn? googleSignIn,
  })  : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.standard();
  final firebase_auth.FirebaseAuth? _firebaseAuth;
  final GoogleSignIn? _googleSignIn;

  firebase_auth.User? get currentUser =>
      firebase_auth.FirebaseAuth.instance.currentUser;

  Future<void> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth?.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw LoginWithEmailAndPasswordError(
        errorMessage: e.message ?? 'Unknown Error',
      );
    } catch (e) {
      throw LoginWithEmailAndPasswordError();
    }
  }

  Future<void> loginWithGoogle() async {
    try {
      late firebase_auth.AuthCredential credential;
      final googleUser = await _googleSignIn?.signIn();
      final googleAuth = await googleUser?.authentication;
      credential = firebase_auth.GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await convertUserWithGmail(credential: credential);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw LoginWithGoogleError(errorMessage: e.message ?? 'Unknown Error');
    } catch (e) {
      throw LoginWithGoogleError();
    }
  }

  Future<void> signup({
    required String email,
    required String password,
  }) async {
    try {
      await convertUserWithEmail(email: email, password: password);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw SignupWithEmailAndPasswordError(
        errorMessage: e.message ?? 'Unknown Error',
      );
    } catch (e) {
      throw SignupWithEmailAndPasswordError();
    }
  }

  Future<void> convertUserWithEmail(
      {required String email, required String password}) async {
    try {
      final _currentUser = currentUser;
      final credential = firebase_auth.EmailAuthProvider.credential(
        email: email,
        password: password,
      );
      await _currentUser?.linkWithCredential(credential);
    } on firebase_auth.FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'provider-already-linked':
          await _firebaseAuth?.signInWithEmailAndPassword(
            email: email,
            password: password,
          );
          break;
        case 'invalid-credential':
          break;
        case 'credential-already-in-use':
          break;
        case ' email-already-in-use':
          await _firebaseAuth?.signInWithEmailAndPassword(
            email: email,
            password: password,
          );
          break;
      }
    } catch (e) {
      throw SignupWithEmailAndPasswordError();
    }
  }

  Future<void> convertUserWithGmail(
      {required firebase_auth.AuthCredential credential}) async {
    try {} on firebase_auth.FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'provider-already-linked':
          break;
        case 'invalid-credential':
          break;
        case 'credential-already-in-use':
          await _firebaseAuth?.signInWithCredential(credential);
          break;
        case ' email-already-in-use':
          await _firebaseAuth?.signInWithCredential(credential);
          break;
      }
    } catch (e) {
      throw SignupWithEmailAndPasswordError();
    }
  }

  /// Check if user has started a session
  bool isLoggedIn() {
    if (firebase_auth.FirebaseAuth.instance.currentUser == null) {
      return true;
    }
    return false;
  }

  Future<void> logout() async {
    try {
      await _firebaseAuth?.signOut();
      await _googleSignIn?.signOut();
    } catch (e) {
      throw LogoutError(errorMessage: e.toString());
    }
  }
}