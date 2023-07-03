import 'package:formz/formz.dart';

enum PassordValidationError { empty }

class Passord extends FormzInput<String, PassordValidationError> {
  const Passord.pure() : super.pure("");
  const Passord.dirty([super.value = ""]) : super.dirty();

  @override
  PassordValidationError? validator(String value) {
    if (value.isEmpty) return PassordValidationError.empty;
    return null;
  }
}