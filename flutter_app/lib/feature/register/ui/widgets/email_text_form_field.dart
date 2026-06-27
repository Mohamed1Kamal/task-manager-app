import 'package:flutter/cupertino.dart';

import '../../../../core/helper/app_regex.dart';
import '../../../../core/widgets/app_text_form.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({super.key, required this.controller});
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: controller,
      hintText: "Email",
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        if (!AppRegex.isEmailValid(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
    );
  }
}
