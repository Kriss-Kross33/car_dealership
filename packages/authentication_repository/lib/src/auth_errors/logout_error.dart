import 'package:errors/errors.dart';

class LogoutError extends AppException {
  LogoutError({this.errorMessage = 'Unknown Error'})
      : super(errorMessage: errorMessage);
  final String errorMessage;
}
