import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:car_dealership/src/common/auth/login/presentation/cubits/cubits.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:formz_input/formz_input.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

void main() {
  const emailString = 'kwamefosu@gmail.com';
  const email = Email.dirty(emailString);
  const invalidEmailString = 'invalid';
  const invalidEmail = Email.dirty(invalidEmailString);
  const passwordString = 'pAssw0rd@';
  const password = Password.dirty(passwordString);
  const invalidPasswordString = 'invalid';
  const invalidPassword = Password.dirty(invalidPasswordString);

  group(
    'LoginCubit',
    () {
      late AuthenticationRepository authenticationRepository;
      late LoginCubit loginCubit;
      setUp(() {
        authenticationRepository = MockAuthenticationRepository();
        loginCubit =
            LoginCubit(authenticationRepository: authenticationRepository);

        when(
          () => authenticationRepository.loginWithEmailAndPassword(
            email: emailString,
            password: passwordString,
          ),
        ).thenAnswer((_) async => {});
      });

      test('initial state is LoginState', () {
        expect(loginCubit.state, equals(const LoginState()));
      });

      group('onEmailInput', () {
        blocTest<LoginCubit, LoginState>(
          'emits [valid] when email is valid',
          build: () => loginCubit,
          seed: () => const LoginState(password: password),
          act: (cubit) => cubit.onEmailInput(emailString),
          expect: () => <LoginState>[
            const LoginState(
              isValid: true,
              email: email,
              password: password,
            ),
          ],
        );

        blocTest<LoginCubit, LoginState>(
          'emits [invalid] when email is invalid',
          build: () => loginCubit,
          act: (cubit) => cubit.onEmailInput(invalidEmailString),
          expect: () => <LoginState>[
            const LoginState(
              isValid: false,
              email: invalidEmail,
            )
          ],
        );
      });

      group('onPasswordInput', () {
        blocTest<LoginCubit, LoginState>(
          'emits [valid] when password is valid',
          build: () => loginCubit,
          seed: () => const LoginState(email: email),
          act: (cubit) => cubit.onPasswordInput(passwordString),
          expect: () => <LoginState>[
            const LoginState(
              password: password,
              email: email,
              isValid: true,
            ),
          ],
        );

        blocTest<LoginCubit, LoginState>(
          'emits [invalid] when password is invalid',
          build: () => loginCubit,
          act: (cubit) => cubit.onPasswordInput(invalidPasswordString),
          expect: () => <LoginState>[
            const LoginState(
              isValid: false,
              password: invalidPassword,
            ),
          ],
        );
      });

      group('onLoginPressed', () {
        blocTest<LoginCubit, LoginState>(
          'emits nothing when state is invalid',
          build: () => loginCubit,
          seed: () => const LoginState(
            isValid: false,
          ),
          act: (cubit) => cubit.onLoginPressed(),
          expect: () => <LoginState>[],
        );

        blocTest<LoginCubit, LoginState>(
          'calls loginWithEmailAndPassword with the correct email and password',
          build: () => loginCubit,
          seed: () => const LoginState(
            email: email,
            password: password,
            isValid: true,
          ),
          act: (cubit) => cubit.onLoginPressed(),
          verify: (cubit) {
            verify(
              () => authenticationRepository.loginWithEmailAndPassword(
                email: emailString,
                password: passwordString,
              ),
            );
          },
        );
        blocTest<LoginCubit, LoginState>(
          'emits [loading, success] when login is successful',
          build: () => loginCubit,
          seed: () => const LoginState(
            isValid: true,
            email: email,
            password: password,
          ),
          act: (cubit) => cubit.onLoginPressed(),
          expect: () => <LoginState>[
            const LoginState(
              status: FormzSubmissionStatus.inProgress,
              email: email,
              password: password,
              isValid: true,
            ),
            const LoginState(
              status: FormzSubmissionStatus.success,
              email: email,
              password: password,
              isValid: true,
            ),
          ],
        );
        blocTest<LoginCubit, LoginState>(
          'emits [loading, failure] when an error occurs',
          build: () => loginCubit,
          setUp: () {
            when(() =>
                authenticationRepository.loginWithEmailAndPassword(
                    email: emailString, password: passwordString)).thenThrow(
                LoginWithEmailAndPasswordError(errorMessage: 'Unknown Error'));
          },
          seed: () => const LoginState(
            email: email,
            password: password,
            isValid: true,
          ),
          act: (cubit) => cubit.onLoginPressed(),
          expect: () => <LoginState>[
            const LoginState(
              status: FormzSubmissionStatus.inProgress,
              email: email,
              password: password,
              isValid: true,
            ),
            const LoginState(
              status: FormzSubmissionStatus.failure,
              email: email,
              password: password,
              isValid: true,
              errorMessage: 'Unknown Error',
            ),
          ],
        );
      });
    },
  );
}
