import 'package:formz/formz.dart';

enum PassordValidationError { empty }

class Password extends FormzInput<String, PassordValidationError> {
  const Password.pure() : super.pure("");
  const Password.dirty([super.value = ""]) : super.dirty();

  @override
  PassordValidationError? validator(String value) {
    if (value.isEmpty) return PassordValidationError.empty;
    return null;
  }
}