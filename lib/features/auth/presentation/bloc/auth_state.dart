part of 'auth_bloc.dart';

enum RequestState {
  init,
  loading,
  success,
  error,
}

class AuthState {
  RequestState signUpRequestState;
  AuthModel? authModel;
  RouteFailures? failures;

  AuthState(
      {this.signUpRequestState = RequestState.init,
      this.authModel,
      this.failures});

  AuthState copyWith({
    RequestState? signUpRequestState,
    AuthModel? authModel,
    RouteFailures? failures,
  }) {
    return AuthState(
      signUpRequestState: signUpRequestState ?? this.signUpRequestState,
      authModel: authModel ?? this.authModel,
      failures: failures ?? this.failures,
    );
  }
}

final class AuthInitial extends AuthState {

}
