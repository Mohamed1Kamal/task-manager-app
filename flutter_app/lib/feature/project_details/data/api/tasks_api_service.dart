import 'package:dio/dio.dart';
import 'package:flutter_app/core/networking/api_constants.dart';
import 'package:flutter_app/feature/project_details/data/model/tasks_model.dart';
import 'package:retrofit/retrofit.dart';

part 'tasks_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class TaskApiService {
  factory TaskApiService(Dio dio, {String baseUrl}) = _TaskApiService;

  @GET("/tasks")
  Future<List<TaskModel>> getTasksByProject(@Query("projectId") int projectId);
}
