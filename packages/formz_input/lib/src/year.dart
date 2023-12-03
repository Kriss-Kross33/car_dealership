import 'package:formz/formz.dart';

enum YearValidationError { invalid }

class Year extends FormzInput<String, YearValidationError> {
  const Year.pure() : super.pure('');
  const Year.dirty([super.dirty = '']) : super.dirty();

  YearValidationError? validator(String? value) {
    if (value != null) {
      final currentYear = DateTime.now().year;
      final yearInt = int.parse(value);
      if (1930 >= yearInt && yearInt <= currentYear) {
        return null;
      }
      return YearValidationError.invalid;
    }
    return YearValidationError.invalid;
  }
}
