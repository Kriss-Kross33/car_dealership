import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:car_dealership/src/common/auth/auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:formz_input/formz_input.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

void main() {
  late AuthenticationRepository authenticationRepository;
  late SignupCubit signupCubit;
  const invalidString = 'invalid';
  // username
  const usernameString = 'rasfosu';
  const username = Field.dirty(usernameString);
  const invalidUsername = Field.dirty(invalidString);
  // email
  const emailString = 'email@gmail.com';
  const email = Email.dirty(emailString);
  const invalidEmail = Email.dirty(invalidString);
  // phone number
  const phoneNumberString = '0546814337';
  const phoneNumber = PhoneNumber.dirty(phoneNumberString);
  const invalidPhoneNumber = PhoneNumber.dirty(invalidString);
  // password
  const passwordString = 'pAssw0rd@';
  const password = Password.dirty(passwordString);
  const invalidPassword = Password.dirty(invalidString);
  // confirm password
  const confirmPasswordString = 'pAssw0rd@';
  const confirmPassword = ConfirmPassword.dirty(
    password: passwordString,
    value: confirmPasswordString,
  );
  const invalidConfirmPassword = ConfirmPassword.dirty(
    password: passwordString,
    value: invalidString,
  );

  setUp(() {
    authenticationRepository = MockAuthenticationRepository();
    signupCubit = SignupCubit(
      authenticationRepository: authenticationRepository,
    );
    when(
      () => authenticationRepository.signup(
        email: emailString,
        password: passwordString,
      ),
    ).thenAnswer((_) async => {});
  });

  group('SignupCubit', () {
    test('initial state is SignupState', () {
      expect(signupCubit.state, equals(const SignupState()));
    });

    group('onUsernameInput', () {
      blocTest<SignupCubit, SignupState>(
        'emits [valid] when username is valid',
        build: () => signupCubit,
        seed: () => const SignupState(
          email: email,
          phoneNumber: phoneNumber,
          password: password,
          confirmPassword: confirmPassword,
          isValid: true,
        ),
        act: (cubit) => cubit.onUsernameInput(usernameString),
        expect: () => <SignupState>[
          const SignupState(
            username: username,
            email: email,
            phoneNumber: phoneNumber,
            password: password,
            confirmPassword: confirmPassword,
            isValid: true,
          ),
        ],
      );

      blocTest<SignupCubit, SignupState>(
        'emits [invalid] when username is invalid',
        build: () => signupCubit,
        act: (cubit) => cubit.onUsernameInput(invalidString),
        expect: () => <SignupState>[
          const SignupState(
            username: invalidUsername,
            isValid: false,
          ),
        ],
      );
    });

    group('onEmailInput', () {
      blocTest<SignupCubit, SignupState>(
        'emits [valid] when emai is valid',
        build: () => signupCubit,
        seed: () => const SignupState(
          username: username,
          phoneNumber: phoneNumber,
          password: password,
          confirmPassword: confirmPassword,
          isValid: true,
        ),
        act: (cubit) => cubit.onEmailInput(emailString),
        expect: () => <SignupState>[
          const SignupState(
            username: username,
            email: email,
            phoneNumber: phoneNumber,
            password: password,
            confirmPassword: confirmPassword,
            isValid: true,
          ),
        ],
      );

      blocTest<SignupCubit, SignupState>(
        'emits [invalid] when email is invalid',
        build: () => signupCubit,
        act: (cubit) => cubit.onEmailInput(invalidString),
        expect: () => <SignupState>[
          const SignupState(
            email: invalidEmail,
            isValid: false,
          ),
        ],
      );
    });

    group('onPhoneNumberInupt', () {
      blocTest<SignupCubit, SignupState>(
        'emits [valid] when phoneNumber is valid',
        build: () => signupCubit,
        seed: () => const SignupState(
          username: username,
          email: email,
          password: password,
          confirmPassword: confirmPassword,
          isValid: true,
        ),
        act: (cubit) => cubit.onPhoneNumberInput(phoneNumberString),
        expect: () => <SignupState>[
          const SignupState(
            phoneNumber: phoneNumber,
            username: username,
            email: email,
            password: password,
            confirmPassword: confirmPassword,
            isValid: true,
          )
        ],
      );

      blocTest<SignupCubit, SignupState>(
        'emits [invalid] when phoneNumber is invalid',
        build: () => signupCubit,
        act: (cubit) => cubit.onPhoneNumberInput(invalidString),
        expect: () => <SignupState>[
          const SignupState(
            phoneNumber: invalidPhoneNumber,
            isValid: false,
          ),
        ],
      );
    });

    group('onPasswordInput', () {
      blocTest<SignupCubit, SignupState>(
        'emits [valid] when password is valid',
        build: () => signupCubit,
        seed: () => const SignupState(
          username: username,
          email: email,
          phoneNumber: phoneNumber,
          confirmPassword: confirmPassword,
        ),
        act: (cubit) => cubit.onPasswordInput(passwordString),
        expect: () => <SignupState>[
          const SignupState(
            password: password,
            username: username,
            email: email,
            phoneNumber: phoneNumber,
            confirmPassword: confirmPassword,
            isValid: true,
          )
        ],
      );

      blocTest<SignupCubit, SignupState>(
        'emits [invalid] when password is invalid',
        build: () => signupCubit,
        act: (cubit) => cubit.onPasswordInput(invalidString),
        expect: () => <SignupState>[
          const SignupState(
            password: invalidPassword,
            confirmPassword: ConfirmPassword.dirty(
              password: invalidString,
            ),
            isValid: false,
          )
        ],
      );
    });

    group('onConfirmPasswordInput', () {
      blocTest<SignupCubit, SignupState>(
        'emits [valid] when confirmpassword is valid',
        build: () => signupCubit,
        seed: () => const SignupState(
          username: username,
          email: email,
          phoneNumber: phoneNumber,
          password: password,
          isValid: true,
        ),
        act: (cubit) => cubit.onConfirmPasswordInput(confirmPasswordString),
        expect: () => <SignupState>[
          const SignupState(
            confirmPassword: confirmPassword,
            username: username,
            email: email,
            phoneNumber: phoneNumber,
            password: password,
            isValid: true,
          ),
        ],
      );

      blocTest<SignupCubit, SignupState>(
        'emits [invalid] when confirmPassword is invalid',
        build: () => signupCubit,
        act: (cubit) => cubit.onConfirmPasswordInput(invalidString),
        expect: () => <SignupState>[
          const SignupState(
              confirmPassword: invalidConfirmPassword, isValid: false),
        ],
      );
    });

    group('onSignupPressed', () {
      blocTest<SignupCubit, SignupState>(
        'emits nothing if state is not valid',
        build: () => signupCubit,
        seed: () => const SignupState(isValid: false),
        act: (cubit) => cubit.onSignupPressed(),
        expect: () => <SignupState>[],
      );

      blocTest<SignupCubit, SignupState>(
        'calls signup with the correct data',
        build: () => signupCubit,
        seed: () => const SignupState(
          username: username,
          email: email,
          phoneNumber: phoneNumber,
          password: password,
          confirmPassword: confirmPassword,
          isValid: true,
        ),
        act: (cubit) => cubit.onSignupPressed(),
        verify: (cubit) {
          verify(
            () => authenticationRepository.signup(
              email: emailString,
              password: passwordString,
            ),
          );
        },
      );

      blocTest<SignupCubit, SignupState>(
        'emits [loading, success] when signup is successful',
        build: () => signupCubit,
        seed: () => const SignupState(
          username: username,
          email: email,
          phoneNumber: phoneNumber,
          password: password,
          confirmPassword: confirmPassword,
          isValid: true,
        ),
        act: (cubit) => cubit.onSignupPressed(),
        expect: () => <SignupState>[
          const SignupState(
            status: FormzSubmissionStatus.inProgress,
            username: username,
            email: email,
            phoneNumber: phoneNumber,
            password: password,
            confirmPassword: confirmPassword,
            isValid: true,
          ),
          const SignupState(
            status: FormzSubmissionStatus.success,
            username: username,
            email: email,
            phoneNumber: phoneNumber,
            password: password,
            confirmPassword: confirmPassword,
            isValid: true,
          ),
        ],
      );

      blocTest<SignupCubit, SignupState>(
        'emits [loading, failure] when an error occurs',
        build: () => signupCubit,
        setUp: () {
          when(
            () => authenticationRepository.signup(
              email: emailString,
              password: passwordString,
            ),
          ).thenThrow(
            SignupWithEmailAndPasswordError(
                errorMessage: 'Something went wrong'),
          );
        },
        seed: () => const SignupState(
          username: username,
          email: email,
          phoneNumber: phoneNumber,
          password: password,
          confirmPassword: confirmPassword,
          isValid: true,
        ),
        act: (cubit) => cubit.onSignupPressed(),
        expect: () => <SignupState>[
          const SignupState(
            status: FormzSubmissionStatus.inProgress,
            username: username,
            email: email,
            phoneNumber: phoneNumber,
            password: password,
            confirmPassword: confirmPassword,
            isValid: true,
          ),
          const SignupState(
            status: FormzSubmissionStatus.failure,
            errorMessage: 'Something went wrong',
            username: username,
            email: email,
            phoneNumber: phoneNumber,
            password: password,
            confirmPassword: confirmPassword,
            isValid: true,
          ),
        ],
      );
    });
  });
}
