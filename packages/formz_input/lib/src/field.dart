import 'package:formz/formz.dart';

enum FieldValidationError { invalid }

class Field extends FormzInput<String, FieldValidationError> {
  const Field.pure() : super.pure('');
  const Field.dirty([String value = '']) : super.dirty(value);

  // static final regExp = RegExp(r'/^\s*(?:\d\s*){n}$/');

  @override
  FieldValidationError? validator(String? value) {
    if (value == null) value = '';
    if (value.isNotEmpty) return null;
    return FieldValidationError.invalid;
  }
}
