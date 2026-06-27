
import 'package:dio/dio.dart';
import 'package:flutter_app/core/networking/api_constants.dart';
import 'package:flutter_app/feature/new_task/data/model/task_request_model.dart';
import 'package:flutter_app/feature/project_details/data/model/tasks_model.dart';
import 'package:retrofit/retrofit.dart';

part 'add_task_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class AddTaskApiService {
  factory AddTaskApiService(Dio dio, {String baseUrl}) = _AddTaskApiService;

  @POST("/tasks")
  Future<TaskModel> addTask(@Body() TaskRequestModel task);
}