part of 'auth_bloc_bloc.dart';

@immutable
abstract class AuthBlocEvent {
  const AuthBlocEvent();
}

class AuthEventInitialize extends AuthBlocEvent {
  const AuthEventInitialize();
}

class AuthEventSendEmailVerification extends AuthBlocEvent {
  const AuthEventSendEmailVerification();
}

class AuthEventLogin extends AuthBlocEvent {
  final String email;
  final String password;

  const AuthEventLogin({
    required this.email,
    required this.password,
  });
}

class AuthEventRegister extends AuthBlocEvent {
  final String email;
  final String password;

  const AuthEventRegister({
    required this.email,
    required this.password,
  });
}

class AuthEventShouldRegister extends AuthBlocEvent {
  const AuthEventShouldRegister();
}

class AuthEventForgotPassword extends AuthBlocEvent {
  final String? email;

  const AuthEventForgotPassword(this.email);
}

class AuthEventLogOut extends AuthBlocEvent {
  const AuthEventLogOut();
}
