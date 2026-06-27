import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/routing/app_router.dart';

class AlreadyHaveAcountText extends StatelessWidget {
  const AlreadyHaveAcountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account yet? ",
          style: TextStyle(color: Colors.grey[700]),
        ),
        GestureDetector(
          onTap: () {
            AppRouter.router.push(AppRouter.kViewRegister);
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
