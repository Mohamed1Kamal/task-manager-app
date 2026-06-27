import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/register_request_body.dart';
import '../models/register_response.dart';

part 'register_api_service.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class RegisterApiService {
  factory RegisterApiService(Dio dio) = _RegisterApiService;

  @POST("/users")
  Future<RegisterResponse> register(@Body() RegisterRequestBody body);
}