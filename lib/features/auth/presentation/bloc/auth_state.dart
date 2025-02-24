part of 'auth_bloc.dart';

enum RequestState {
  init,
  loading,
  success,
  error,
}

class AuthState {
  RequestState? signUpRequestState;
  RequestState? loginRequestState;
  AuthModel? model;

  RouteFailures? failures;

  AuthState(
      {this.signUpRequestState,
      this.loginRequestState,
      this.model,
      this.failures});

  AuthState copWith({
    RequestState? signUpRequestState,
    RequestState? loginRequestState,
    AuthModel? model,
    RouteFailures? failures,
  }) {
    return AuthState(
        signUpRequestState: signUpRequestState ?? this.signUpRequestState,
        loginRequestState: loginRequestState ?? this.loginRequestState,
        model: model ?? this.model,
        failures: failures ?? this.failures);
  }
}

final class AuthInitial extends AuthState {
  AuthInitial()
      : super(
          signUpRequestState: RequestState.init,
          loginRequestState: RequestState.init,
        );
}
