import 'failures.dart';

class ServerFailure extends Failure {
  ServerFailure({required this.errorMessage})
      : super(errorMessage: errorMessage);
  final String errorMessage;
}
