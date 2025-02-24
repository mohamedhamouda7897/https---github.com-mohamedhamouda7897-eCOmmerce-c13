part of 'auth_bloc.dart';

abstract class AuthEvent {}

class SignUpBtnEvent extends AuthEvent {
  SignUpRequestModel requestModel;

  SignUpBtnEvent(this.requestModel);
}

class LoginBtnEvent extends AuthEvent {
  String email;
  String password;

  LoginBtnEvent(this.email, this.password);
}
