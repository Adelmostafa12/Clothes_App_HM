abstract class Login_States {}

class LoginIntialState extends Login_States{}

class LoginLoadinState extends Login_States{}

class LoginSuccessState extends Login_States{}

class LoginErrorState extends Login_States{
  final String error;

  LoginErrorState(this.error);
}

class LoginChangeSecureIcon extends Login_States{}