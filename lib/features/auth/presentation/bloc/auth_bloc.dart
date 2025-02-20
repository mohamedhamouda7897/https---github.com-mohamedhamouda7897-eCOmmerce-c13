import 'package:bloc/bloc.dart';
import 'package:ecommerce_c13_friday/core/failures/failures.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/auth_model.dart';
import 'package:ecommerce_c13_friday/features/auth/data/models/singup_request_model.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/usecases/login_use_case.dart';
import 'package:ecommerce_c13_friday/features/auth/domain/usecases/sign_up_use_case.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  SignUpUseCase signUpUseCase;
  LoginUseCase loginUseCase;

  AuthBloc(this.signUpUseCase,this.loginUseCase) : super(AuthInitial()) {
    on<SignUpEvent>((event, emit) async {
      emit(state.copyWith(signUpRequestState: RequestState.loading));
      var result = await signUpUseCase.call(request: event.model);

      result.fold(
        (error) {
          emit(state.copyWith(
              signUpRequestState: RequestState.error, failures: error));
        },
        (data) {
          print(data.message);
          emit(state.copyWith(
              signUpRequestState: RequestState.loaded, authModel: data));
        },
      );
    });

    on<OnLoginEvent>(
      (event, emit) async{
        emit(state.copyWith(loginRequestState: RequestState.loading));
        var result = await loginUseCase.call(event.email,event.password);

        result.fold(
              (error) {
            emit(state.copyWith(
                loginRequestState: RequestState.error, failures: error));
          },
              (data) {
            print(data.message);
            emit(state.copyWith(
                loginRequestState: RequestState.loaded, authModel: data));
          },
        );
      },
    );
  }
}
