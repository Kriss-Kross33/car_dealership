import 'package:formz/formz.dart';

enum YearValidationError { invalid }

class Year extends FormzInput<String, YearValidationError> {
  const Year.pure() : super.pure('');
  const Year.dirty([super.dirty = '']) : super.dirty();

  YearValidationError? validator(String? value) {
    if (value != null && value.isNotEmpty) {
      final currentYear = DateTime.now().year;
      final yearInt = int.parse(value);
      if (yearInt <= currentYear && yearInt >= 1930) {
        return null;
      }
      return YearValidationError.invalid;
    }
    return YearValidationError.invalid;
  }
}
