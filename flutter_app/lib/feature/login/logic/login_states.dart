
import 'package:flutter_app/feature/login/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_states.freezed.dart';
@freezed
class LoginStates<T> with _$LoginStates<T>{
const factory LoginStates.loginError(String error) = LoginError<T>;
const factory LoginStates.loginInit() = _LoginInit<T>;
const factory LoginStates.loginLoading() = LoginLoading<T>;
const factory LoginStates.loginSuccess(UserModel data) = LoginSuccess<T>;
}