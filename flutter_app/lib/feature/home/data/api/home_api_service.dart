
import 'package:dio/dio.dart';
import 'package:flutter_app/core/networking/api_constants.dart';
import 'package:flutter_app/feature/home/data/model/project_model.dart';
import 'package:retrofit/retrofit.dart';


part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl} ) = _HomeApiService;

  @GET("/projects")
  Future<List<ProjectModel>> getProjects(@Query("userId") int userId);

}