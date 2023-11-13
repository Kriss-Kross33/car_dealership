import 'package:authentication_repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:formz_input/formz_input.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const SignupState());

  final AuthenticationRepository _authenticationRepository;

  void onUsernameInput(String usernameString) {
    final username = Field.dirty(usernameString);
    emit(
      state.copyWith(
        username: username,
        isValid: Formz.validate([
          username,
          state.email,
          state.phoneNumber,
          state.password,
          state.confirmPassword,
        ]),
      ),
    );
  }

  void onEmailInput(String emailString) {
    final email = Email.dirty(emailString);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate(
          [
            email,
            state.username,
            state.phoneNumber,
            state.password,
            state.confirmPassword,
          ],
        ),
      ),
    );
  }

  void onPhoneNumberInput(String phoneNumberString) {
    final phoneNumber = PhoneNumber.dirty(phoneNumberString);
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
        isValid: Formz.validate(
          [
            phoneNumber,
            state.username,
            state.email,
            state.password,
            state.confirmPassword,
          ],
        ),
      ),
    );
  }

  void onPasswordInput(String passwordString) {
    final password = Password.dirty(passwordString);
    final confirmPassword = ConfirmPassword.dirty(
      password: password.value,
      value: state.confirmPassword.value,
    );
    emit(
      state.copyWith(
        password: password,
        confirmPassword: confirmPassword,
        isValid: Formz.validate(
          [
            password,
            confirmPassword,
            state.username,
            state.email,
            state.phoneNumber,
          ],
        ),
      ),
    );
  }

  void onConfirmPasswordInput(String confirmPasswordString) {
    final confirmPassword = ConfirmPassword.dirty(
      password: state.password.value,
      value: confirmPasswordString,
    );
    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
        isValid: Formz.validate(
          [
            confirmPassword,
            state.username,
            state.email,
            state.phoneNumber,
            state.password,
          ],
        ),
      ),
    );
  }

  Future<void> onSignupPressed() async {
    if (!state.isValid) return;
    try {
      emit(
        state.copyWith(status: FormzSubmissionStatus.inProgress),
      );
      await _authenticationRepository.signup(
        email: state.email.value,
        password: state.confirmPassword.value,
      );
      emit(
        state.copyWith(status: FormzSubmissionStatus.success),
      );
    } on SignupWithEmailAndPasswordError catch (e) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMessage: e.errorMessage,
        ),
      );
    }
  }
}
