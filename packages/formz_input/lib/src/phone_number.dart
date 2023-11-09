import 'package:formz/formz.dart';

enum PhoneValidationError {
  invalid,
}

class PhoneNumber extends FormzInput<String, PhoneValidationError> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty([String value = '']) : super.dirty(value);

  @override
  PhoneValidationError? validator(String? value) {
    value ??= '';
    return value.length == 10 ? null : PhoneValidationError.invalid;
  }
}
