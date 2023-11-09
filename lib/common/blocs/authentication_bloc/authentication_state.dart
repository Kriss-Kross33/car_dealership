part of 'authentication_bloc.dart';

class AuthenticationState extends Equatable {
  const AuthenticationState._({
    this.status = AuthenticationStatus.unauthenticated,
    this.user = User.empty,
  });



  const AuthenticationState.unauthenticated()
      : this._(status: AuthenticationStatus.unauthenticated);

  const AuthenticationState.authenticated({required User user})
      : this._(status: AuthenticationStatus.authenticated, user: user);

  final AuthenticationStatus status;
  final User user;

  @override
  List<Object> get props => [
        status,
        user,
      ];
}
