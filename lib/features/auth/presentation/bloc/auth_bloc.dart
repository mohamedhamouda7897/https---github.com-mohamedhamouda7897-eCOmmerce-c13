import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failures/route_failures.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/signup_requestModel.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/usecases/signup_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  SignUpUseCase signUpUseCase;
  LoginUseCase loginUseCase;

  static AuthBloc get(context) => BlocProvider.of(context);

  AuthBloc(this.signUpUseCase, this.loginUseCase) : super(AuthInitial()) {
    // on<AuthEvent>((event, emit) {});
    on<SignUpBtnEvent>(
      (event, emit) async {
        emit(state.copWith(signUpRequestState: RequestState.loading));

        var result = await signUpUseCase.call(request: event.requestModel);
        result.fold(
          (l) {
            emit(state.copWith(
                signUpRequestState: RequestState.error, failures: l));
          },
          (r) {
            emit(state.copWith(
                signUpRequestState: RequestState.success, model: r));
          },
        );
      },
    );

    on<LoginBtnEvent>(
      (event, emit) async {
        emit(state.copWith(loginRequestState: RequestState.loading));

        var result = await loginUseCase.call(event.email, event.password);
        result.fold(
          (l) {
            emit(state.copWith(
                loginRequestState: RequestState.error, failures: l));
          },
          (r) {
            emit(state.copWith(
                loginRequestState: RequestState.success, model: r));
          },
        );
      },
    );
  }
}
