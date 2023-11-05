import 'exceptions.dart';

class ServerException extends AppException {
  ServerException({required this.errorMessage})
      : super(errorMessage: errorMessage);
  final String errorMessage;
}
