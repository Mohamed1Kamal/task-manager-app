import 'package:flutter_app/core/networking/api_error_handler.dart';
import 'package:flutter_app/core/networking/api_result.dart';
import 'package:flutter_app/feature/new_task/data/api/add_task_api_service.dart';
import 'package:flutter_app/feature/new_task/data/model/task_request_model.dart';
import 'package:flutter_app/feature/project_details/data/model/tasks_model.dart';

class AddTaskRepo {
  final AddTaskApiService _addTaskApiService;
  AddTaskRepo(this._addTaskApiService);

  Future<ApiResult<TaskModel>> addTask(TaskRequestModel task) async {
    try {
      final response = await _addTaskApiService.addTask(task);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
