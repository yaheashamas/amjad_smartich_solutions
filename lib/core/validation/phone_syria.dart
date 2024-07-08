import 'package:formz/formz.dart';

class PhoneSyria extends FormzInput<String, String> {
  const PhoneSyria.pure() : super.pure('');
  const PhoneSyria.dirty(super.value) : super.dirty();
  static final RegExp phoneRegex =
      RegExp(r"^(\+9639|009639|09639|09)[0-9]{8}$");
  @override
  String? validator(String value) {
    if (value.isEmpty) {
      return "Required";
    } else if (!phoneRegex.hasMatch(value)) {
      return "shud start +9639,009639,09639 or 09 then 8 numbers";
    } else {
      return null;
    }
  }
}
