import 'package:formz/formz.dart';

enum FieldValidationError { invalid }

class Field extends FormzInput<String, FieldValidationError> {
  const Field.pure() : super.pure('');
  const Field.dirty([String value = '']) : super.dirty(value);

  @override
  FieldValidationError? validator(String? value) {
    if (value != null) {
      return value.isNotEmpty ? null : FieldValidationError.invalid;
    }
    return null;
  }
}
