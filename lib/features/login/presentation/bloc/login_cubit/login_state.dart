part of 'login_cubit.dart';

class LoginState extends Equatable {
  final PhoneSyria phoneNumber;
  final Password password;
  final String message;
  final StateClass stateClass;
  final LoginEntity? loginEntity;

  const LoginState({
    required this.phoneNumber,
    required this.password,
    required this.message,
    required this.stateClass,
    required this.loginEntity,
  });

  factory LoginState.init() {
    return LoginState(
      phoneNumber: const PhoneSyria.pure(),
      password: Password.pure(),
      message: "",
      stateClass: StateClass.init,
      loginEntity: null,
    );
  }

  @override
  List<Object?> get props => [
        phoneNumber,
        password,
        message,
        stateClass,
        loginEntity,
      ];

  bool get isSubmitLogin => Formz.validate([
        phoneNumber,
        password,
      ]);

  LoginState copyWith({
    PhoneSyria? phoneNumber,
    Password? password,
    String? message,
    StateClass? stateClass,
    LoginEntity? loginEntity,
  }) {
    return LoginState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      message: message ?? this.message,
      stateClass: stateClass ?? this.stateClass,
      loginEntity: loginEntity ?? this.loginEntity,
    );
  }
}
