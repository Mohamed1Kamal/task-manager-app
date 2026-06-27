import 'package:dio/dio.dart';
import 'package:flutter_app/core/networking/api_constants.dart';
import 'package:flutter_app/feature/login/data/models/user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'login_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class LoginApiService {
  factory LoginApiService(Dio dio, {String baseUrl}) = _LoginApiService;

  @GET("/users")
  Future<List<UserModel>> login(
    @Query("email") String email,
    @Query("password") String password,
  );
}