part of 'auth_bloc.dart';

abstract class AuthEvent {}

class SignUpEvent extends AuthEvent {
  SignUpRequestModel model;

  SignUpEvent(this.model);
}

class OnLoginEvent extends AuthEvent {
  String email;
  String password;

  OnLoginEvent(this.email, this.password);
}
