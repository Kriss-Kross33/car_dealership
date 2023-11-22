import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter_test/src/binding.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockFirebaseAuth extends Mock implements firebase_auth.FirebaseAuth {}

class MockGoogleSignin extends Mock implements GoogleSignIn {}

class MockUserCredential extends Mock implements firebase_auth.UserCredential {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late firebase_auth.FirebaseAuth firebaseAuth;
  late GoogleSignIn googleSignIn;
  late firebase_auth.UserCredential userCredential;
  late AuthenticationRepository authenticationRepository;

  setUp(() {
    firebaseAuth = MockFirebaseAuth();
    googleSignIn = MockGoogleSignin();
    userCredential = MockUserCredential();
    authenticationRepository = AuthenticationRepository(
      firebaseAuth: firebaseAuth,
      googleSignIn: googleSignIn,
    );
  });

  group('AuthenticationRepository', () {
    group('signInAnonymously', () {
      test('should call signInAnonymously', () async {
        //* arrange
        when(() => firebaseAuth.signInAnonymously())
            .thenAnswer((_) async => userCredential);
        //* act
        await authenticationRepository.signInAnonymously();
        verify(() => firebaseAuth.signInAnonymously()).called(1);
      });
    });
  });
}
