import 'package:equatable/equatable.dart';

/// {@template user}
/// Represents an authenticated user.
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}
  const User({
    required this.id,
    required this.isAnonymous,
    this.username,
    this.email,
    this.displayPicture,
  });

  /// The id of the user
  final String id;

  /// The user's email address
  final String? email;

  /// The username set for the user;
  final String? username;

  /// The user's photo
  final String? displayPicture;

  /// Determines if the user is an anonymous user or an authenticated user
  final bool isAnonymous;

  static const User empty = User(
    id: '1',
    isAnonymous: true,
    username: '',
    displayPicture: '',
    email: '',
  );

  /// Check to see if user is empty
  bool get isEmpty => this == User.empty;

  /// Check to see if user is not empty
  bool get isNotEmpty => !isEmpty;

  @override
  List<Object?> get props => [
        id,
        email,
        username,
        displayPicture,
      ];
}
