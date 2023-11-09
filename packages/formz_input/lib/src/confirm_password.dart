import 'package:formz/formz.dart';

enum ConfirmPasswordValidatonError {
  invalid,
}

class ConfirmPassword
    extends FormzInput<String, ConfirmPasswordValidatonError> {
  const ConfirmPassword.pure({this.password = ''}) : super.pure('');

  const ConfirmPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  /// The original passoword entered.
  final String password;

  @override
  ConfirmPasswordValidatonError? validator(String? value) {
    return password == value ? null : ConfirmPasswordValidatonError.invalid;
  }
}
