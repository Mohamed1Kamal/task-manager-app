
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/register_response.dart';
part 'register_states.freezed.dart';
@freezed
class RegisterStates<T> with _$RegisterStates<T>{
const factory RegisterStates.error(String error) = Error<T>;
const factory RegisterStates.init() = _Init<T>;
const factory RegisterStates.loading() = Loading<T>;
const factory RegisterStates.success(RegisterResponse data) = Success<T>;
}