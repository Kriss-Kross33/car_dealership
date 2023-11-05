import 'package:equatable/equatable.dart';

/// Represents a successful response from an external data source.
class Success extends Equatable {
  Success({this.message = ''});

  final String message;

  static Success get instance => Success();

  @override
  List<Object> get props => [message];
}
