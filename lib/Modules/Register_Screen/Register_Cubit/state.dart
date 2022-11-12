abstract class Register_States {}

class RegisterIntialState extends Register_States{}

class RegisterLoadinState extends Register_States{}

class RegisterSuccessState extends Register_States{}

class RegisterErrorState extends Register_States{
  final String error;
  RegisterErrorState(this.error);
}

class RegisterChangeSecureIcon extends Register_States{}