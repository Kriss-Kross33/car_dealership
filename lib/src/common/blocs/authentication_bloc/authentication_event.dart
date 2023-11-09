part of 'authentication_bloc.dart';

sealed class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationUserChangedEvent extends AuthenticationEvent {
  const AuthenticationUserChangedEvent({required this.user});
  final User user;

  @override
  List<Object> get props => [user];
}

class AuthenticationLogoutEvent extends AuthenticationEvent {}
