import 'package:errors/errors.dart';

class LoginWithEmailAndPasswordError extends AppException {
  LoginWithEmailAndPasswordError({
    this.errorMessage = 'Unknown Error',
    this.code = 'Unknown code',
  }) : super(errorMessage: errorMessage);
  final String errorMessage;
  final String code;

  factory LoginWithEmailAndPasswordError.fromCode(String code) {
    return switch (code) {
      'invalid-email' => LoginWithEmailAndPasswordError(
          errorMessage: 'Email is not valid or badly formatted'),
      'user-disabled' => LoginWithEmailAndPasswordError(
          errorMessage:
              'This user has been disabled. Please contact customer support'),
      'wrong-password' => LoginWithEmailAndPasswordError(
          errorMessage:
              'Incorrect password. Please provide the correct password ' +
                  'to proceed',
        ),
      'user-not-found' => LoginWithEmailAndPasswordError(
          errorMessage: 'User not found',
          code: code,
        ),
      _ => LoginWithEmailAndPasswordError(),
    };
  }
}
