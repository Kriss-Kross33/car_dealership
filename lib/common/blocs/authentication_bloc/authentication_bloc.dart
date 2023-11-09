import 'dart:async';

import 'package:authentication_repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
      {required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(const AuthenticationState.unauthenticated()) {
    on<AuthenticationUserChangedEvent>(_onAuthenticationUserChangedEvent);
    on<AuthenticationLogoutEvent>(_onAauthenticationLogoutEvent);

    _userSubscription = authenticationRepository.user.listen((user) {
      add(AuthenticationUserChangedEvent(user: user));
    });
  }

  final AuthenticationRepository _authenticationRepository;
  late StreamSubscription<User> _userSubscription;

  @override
  Future<void> close() async {
    _userSubscription.cancel();
    super.close();
  }

  Future<void> _onAuthenticationUserChangedEvent(
      AuthenticationUserChangedEvent event,
      Emitter<AuthenticationState> emit) async {
    final user = event.user;
    if (!user.isAnonymous) {
      emit(
        user.isNotEmpty
            ? AuthenticationState.authenticated(user: user)
            : const AuthenticationState.unauthenticated(),
      );
    }
  }

  Future<void> _onAauthenticationLogoutEvent(AuthenticationLogoutEvent event,
      Emitter<AuthenticationState> emit) async {
    unawaited(_authenticationRepository.logout());
    await _authenticationRepository.signInAnonymously();
  }
}
