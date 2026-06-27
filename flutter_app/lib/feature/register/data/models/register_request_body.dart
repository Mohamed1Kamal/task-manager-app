import 'package:json_annotation/json_annotation.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String name;
  final String email;
  final String password;
  final String token;

  RegisterRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.token,
  });

  Map<String, dynamic> toJson() =>
      _$RegisterRequestBodyToJson(this);
}