import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/widgets/app_text_form.dart';
import '../../../register/ui/widgets/password_validation_row.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.controller,required this.passwordFocusNode});
  final  TextEditingController? controller;
  final FocusNode passwordFocusNode;


  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  bool isObscureText = true;

  @override
  void initState() {
    widget.passwordFocusNode.addListener((){
      setState(() {

      });
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextFormField(
          isObscureText: isObscureText,
          suffixIcon: IconButton(
            onPressed: (){
              setState(() {
                isObscureText = !isObscureText;
              });
            },
            icon: Icon(
              isObscureText ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          controller: widget.controller,
          focusNode: widget.passwordFocusNode,
          hintText: 'Password',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            if (!AppRegex.isPasswordValid(value)) {
              return 'Please follow the password requirements';
            }
            return null;
          },
          onChanged: (value){
            setState(() {
              hasLowercase = AppRegex.hasLowerCase(value);
              hasUppercase = AppRegex.hasUpperCase(value);
              hasSpecialCharacters = AppRegex.hasSpecialCharacter(value);
              hasNumber = AppRegex.hasNumber(value);
              hasMinLength = AppRegex.hasMinLength(value);
            });

          },
        ),
        if(widget.passwordFocusNode.hasFocus)
          Column(
            children: [
              PasswordValidationRow(
                text: 'At least 1 lowercase letter',
                hasValidated: hasLowercase,
              ),
              verticalSpace(2),
              PasswordValidationRow(
                text: 'At least 1 uppercase letter',
                hasValidated: hasUppercase,
              ),
              verticalSpace(2),
              PasswordValidationRow(
                text: 'At least 1 special character',
                hasValidated: hasSpecialCharacters,
              ),
              verticalSpace(2),
              PasswordValidationRow(
                text: 'At least 1 number',
                hasValidated: hasNumber,
              ),
              verticalSpace(2),
              PasswordValidationRow(
                text: 'At least 8 characters long',
                hasValidated: hasMinLength,
              ),
            ],
          ),
      ],
    );
  }
}
