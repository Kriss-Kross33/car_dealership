part of 'signup_cubit.dart';

class SignupState extends Equatable {
  const SignupState({
    this.username = const Field.pure(),
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmPassword = const ConfirmPassword.pure(),
    this.phoneNumber = const PhoneNumber.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.errorMessage,
  });

  final Field username;
  final Email email;
  final Password password;
  final ConfirmPassword confirmPassword;
  final PhoneNumber phoneNumber;
  final FormzSubmissionStatus status;
  final bool isValid;
  final String? errorMessage;

  SignupState copyWith({
    Field? username,
    Email? email,
    PhoneNumber? phoneNumber,
    Password? password,
    ConfirmPassword? confirmPassword,
    FormzSubmissionStatus? status,
    bool? isValid,
    String? errorMessage,
  }) {
    return SignupState(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        username,
        email,
        password,
        confirmPassword,
        phoneNumber,
        status,
        isValid,
        errorMessage,
      ];
}
