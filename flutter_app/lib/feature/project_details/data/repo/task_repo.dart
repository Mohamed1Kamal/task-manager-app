import 'package:flutter_app/core/networking/api_error_handler.dart';
import 'package:flutter_app/core/networking/api_result.dart';
import 'package:flutter_app/feature/project_details/data/api/tasks_api_service.dart';
import 'package:flutter_app/feature/project_details/data/model/tasks_model.dart';

class TaskRepo {
  final TaskApiService _taskApiService;
  TaskRepo(this._taskApiService);

  Future<ApiResult<List<TaskModel>>> getTasksByProject(int projectId) async {
    try {
      final response = await _taskApiService.getTasksByProject(projectId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
