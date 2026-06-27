import 'package:flutter_app/core/networking/api_error_handler.dart';
import 'package:flutter_app/core/networking/api_result.dart';
import 'package:flutter_app/feature/home/data/api/home_api_service.dart';
import 'package:flutter_app/feature/home/data/model/project_model.dart';

class ProjectRepo {
  final HomeApiService _homeApiService;
  ProjectRepo(this._homeApiService);

  Future<ApiResult<List<ProjectModel>>> getProjects(
    int userId,
  ) async {
    try {
      final response = await _homeApiService.getProjects(userId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
