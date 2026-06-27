import 'package:flutter_app/core/networking/api_error_handler.dart';
import 'package:flutter_app/core/networking/api_result.dart';
import 'package:flutter_app/feature/login/data/api/login_api_service.dart';
import 'package:flutter_app/feature/login/data/models/login_request_model.dart';
import 'package:flutter_app/feature/login/data/models/user_model.dart';

class LoginRepo {
  final LoginApiService apiService;

  LoginRepo(this.apiService);

  Future<ApiResult<UserModel>> login(LoginRequestModel request) async {
    try {
      final users = await apiService.login(
        request.email,
        request.password,
      );

      if (users.isNotEmpty) {
        return ApiResult.success(users.first);
      } else {
        return ApiResult.failure(
          ErrorHandler.handle("Invalid email or password"),
        );
      }
    } catch (error) {
      return ApiResult.failure(
        ErrorHandler.handle(error),
      );
    }
  }
}
