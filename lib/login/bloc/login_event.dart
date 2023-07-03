part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

final class LoginUsernameChanged extends LoginEvent{
  const LoginUsernameChanged(this.unername);

  final String unername;

  @override
  List<Object> get props => [unername];
}

final class LoginPasswordChanged extends LoginEvent{
  const LoginPasswordChanged(this.password);

  final String password;

  @override
  List<Object> get props => [password];
}

final class LoginSubmitted extends LoginEvent{
  const LoginSubmitted();
}