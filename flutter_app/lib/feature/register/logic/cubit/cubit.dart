import 'package:flutter/cupertino.dart';
import 'package:flutter_app/feature/register/logic/cubit/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/networking/api_result.dart';
import '../../data/models/register_request_body.dart';
import '../../data/repos/register_repo.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(RegisterStates.init());

  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();


  void register(RegisterRequestBody registerRequestBody)async{
    emit(RegisterStates.loading());
    var response = await _registerRepo.register(registerRequestBody);
    response.when(
      success: (data) => emit(RegisterStates.success(data)),
      failure: (error) => emit(RegisterStates.error(error.apiErrorModel.message ?? " Error")),
    );

  }
}
