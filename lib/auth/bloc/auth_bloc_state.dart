part of 'auth_bloc_bloc.dart';

@immutable
abstract class AuthBlocState {
  final bool isLoading;
  final String? loadingText;

  const AuthBlocState({
    required this.isLoading,
    this.loadingText = 'Mohon Menunggu...',
  });
}

class AuthStateUnInitialized extends AuthBlocState {
  const AuthStateUnInitialized({required isLoading})
      : super(isLoading: isLoading);
}

class AuthStateRegistering extends AuthBlocState {
  final Exception? exception;

  const AuthStateRegistering({
    required this.exception,
    required bool isLoading,
  }) : super(isLoading: isLoading);
}

class AuthStateForgotPassword extends AuthBlocState {
  final Exception? exception;
  final bool hasSentEmail;

  const AuthStateForgotPassword({
    required this.exception,
    required this.hasSentEmail,
    required bool isLoading,
  }) : super(isLoading: isLoading);
}

class AuthStateLoggedIn extends AuthBlocState {
  final AuthUser user;

  const AuthStateLoggedIn({
    required this.user,
    required bool isLoading,
  }) : super(isLoading: isLoading);
}

class AuthStateNeedVerification extends AuthBlocState {
  const AuthStateNeedVerification({required bool isLoading})
      : super(isLoading: isLoading);
}

class AuthStateLoggedOut extends AuthBlocState with EquatableMixin {
  final Exception? exception;

  AuthStateLoggedOut({
    required this.exception,
    required bool isLoading,
    String? loadingText,
  }) : super(
          isLoading: isLoading,
          loadingText: loadingText,
        );

  @override
  List<Object?> get props => [exception, isLoading];
}
