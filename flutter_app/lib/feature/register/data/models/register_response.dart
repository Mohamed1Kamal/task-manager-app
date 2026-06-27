import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  final String id;
  final String name;
  final String email;
  final String password;
  final String token;

  RegisterResponse({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.token,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json)
      => _$RegisterResponseFromJson(json);

  Map<String, dynamic> toJson()
      => _$RegisterResponseToJson(this);
}