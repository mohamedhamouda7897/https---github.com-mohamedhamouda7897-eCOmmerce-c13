import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failuers/failuers.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_request_model.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/usecases/sign_up_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  SignUpUseCase signUpUseCase;

  LoginUseCase loginUseCase;

  AuthBloc(this.signUpUseCase, this.loginUseCase) : super(AuthInitial()) {
    on<SignUpEvent>(
      (event, emit) async {
        emit(state.copyWith(signUpRequestState: RequestState.loading));
        var result = await signUpUseCase.call(request: event.model);

        result.fold(
          (model) {
            print("Success response");
            emit(state.copyWith(
                signUpRequestState: RequestState.success, authModel: model));
          },
          (error) {
            print("error response");
            emit(state.copyWith(
                signUpRequestState: RequestState.error, failures: error));
          },
        );
      },
    );

    on<OnLoginEvent>(
      (event, emit) async {
        emit(state.copyWith(loginRequestState: RequestState.loading));
        var result = await loginUseCase.call(event.email, event.password);

        result.fold(
          (error) {
            print("error response");
            emit(state.copyWith(
                loginRequestState: RequestState.error, failures: error));
          },
          (model) {
            print("Success response");
            emit(state.copyWith(
                loginRequestState: RequestState.success, authModel: model));
          },
        );
      },
    );
  }
}
