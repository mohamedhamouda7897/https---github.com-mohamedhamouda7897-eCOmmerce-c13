part of 'auth_bloc.dart';

enum RequestState { init, loading, loaded, error }

class AuthState {
  AuthModel? authModel;
  RequestState? signUpRequestState;
  RequestState? loginRequestState;
  RouteFailures? failures;

  AuthState({
    this.failures,
    this.authModel,
    this.signUpRequestState,
    this.loginRequestState,
  });

  AuthState copyWith(
      {AuthModel? authModel,
      RequestState? signUpRequestState,
      RequestState? loginRequestState,
      RouteFailures? failures}) {
    return AuthState(
        authModel: authModel ?? this.authModel,
        signUpRequestState: signUpRequestState ?? this.signUpRequestState,
        loginRequestState: loginRequestState ?? this.loginRequestState,
        failures: failures ?? this.failures);
  }
}

final class AuthInitial extends AuthState {
  AuthInitial()
      : super(
            signUpRequestState: RequestState.init,
            loginRequestState: RequestState.init);
}
