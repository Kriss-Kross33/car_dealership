abstract class AppException implements Exception {
  AppException({required this.errorMessage});
  final String errorMessage;
}
