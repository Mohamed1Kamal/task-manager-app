
import 'package:flutter_app/feature/register/data/apis/register_api_service.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../models/register_request_body.dart';
import '../models/register_response.dart';

class RegisterRepo {
  final RegisterApiService registerApiService;
  RegisterRepo(this.registerApiService);
  Future<ApiResult<RegisterResponse>> register(RegisterRequestBody registerRequestBody) async {
    try{
    final response = await registerApiService.register(registerRequestBody);
    return ApiResult.success(response);
    }
        catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
        }
  }

}