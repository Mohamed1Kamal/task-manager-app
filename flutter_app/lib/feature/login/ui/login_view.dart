
import 'package:flutter/material.dart';
import 'package:flutter_app/feature/login/ui/widgets/login_body.dart';


class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: LoginBody()),
    );
  }
}
