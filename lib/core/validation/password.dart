import 'package:formz/formz.dart';

class Password extends FormzInput<String, String> {
  Password.pure() : super.pure('');
  Password.dirty(super.value) : super.dirty();

  final RegExp _password = RegExp(r"^[A-Za-z1-9\d@$!%*#?&]{8,}$");

  @override
  String? validator(String value) {
    if (value.isEmpty) {
      return "Required";
    } else if (!_password.hasMatch(value)) {
      return "This Length of phone Number Out Of reang";
    } else {
      return null;
    }
  }
}
