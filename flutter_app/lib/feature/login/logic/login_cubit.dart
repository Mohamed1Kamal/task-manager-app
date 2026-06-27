import 'package:flutter/material.dart';
import 'package:flutter_app/core/networking/api_result.dart';
import 'package:flutter_app/feature/login/data/models/login_request_model.dart';
import 'package:flutter_app/feature/login/data/repos/login_repo.dart';
import 'package:flutter_app/feature/login/logic/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginCubit extends Cubit<LoginStates> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(LoginStates.loginInit());

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login(LoginRequestModel loginRequestBody)async {
    emit(LoginStates.loginLoading());
    var response = await loginRepo.login(loginRequestBody);
    response.when(
      success: (data) => emit(LoginStates.loginSuccess(data)),
      failure: (error) => emit(LoginStates.loginError(error.apiErrorModel.message ?? " Error")),
    );
  }

}
