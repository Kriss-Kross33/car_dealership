import 'package:car_dealership/src/common/auth/login/presentation/presentation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:formz_input/formz_input.dart';

void main() {
  late LoginState loginState;
  const email = Email.dirty('email@gmail.com');
  const password = Password.dirty('pAssw0rd@');

  setUp(() {
    loginState = const LoginState();
  });

  group('LoginState', () {
    test('supports value comparison', () {
      expect(loginState, const LoginState());
    });

    test('returns same objects when no properties are passed', () {
      expect(loginState.copyWith(), loginState);
    });

    test('returns object with updated status when status is passed', () {
      expect(
        loginState.copyWith(status: FormzSubmissionStatus.initial),
        loginState,
      );
    });
    test('returns object with updated email when email is passed', () {
      expect(
        loginState.copyWith(email: email),
        const LoginState(email: email),
      );
    });

    test('returns object with updated password when password is passed', () {
      expect(
        loginState.copyWith(password: password),
        const LoginState(password: password),
      );
    });
  });
}
