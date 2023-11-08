import 'package:errors/errors.dart';

class SignupWithEmailAndPasswordError extends AppException {
  SignupWithEmailAndPasswordError({
    this.errorMessage = 'Unknown Error',
    this.code = 'Unknown Code',
  }) : super(errorMessage: errorMessage);
  final String errorMessage;
  final String code;

  factory SignupWithEmailAndPasswordError.fromCode(String code) {
    return switch (code) {
      'invalid-email' =>
        SignupWithEmailAndPasswordError(errorMessage: 'Email is not valid'),
      'user-disabled' => SignupWithEmailAndPasswordError(
          errorMessage:
              'This email has been disabled. Please contact customer support',
        ),
      'operation-not-allowed' => SignupWithEmailAndPasswordError(
          errorMessage:
              'Operation not allowed. Please contact customer support',
        ),
      'weak-password' => SignupWithEmailAndPasswordError(
          errorMessage: 'Weak password. Please enter a stronger password',
        ),
      'email-already-in-use' => SignupWithEmailAndPasswordError(
          errorMessage: 'An account with this email already exists',
        ),
      _ => SignupWithEmailAndPasswordError(),
    };
  }
}
