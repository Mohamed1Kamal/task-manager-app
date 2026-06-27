import 'package:dio/dio.dart';
import 'package:flutter_app/core/networking/dio_factory.dart';
import 'package:flutter_app/feature/home/data/api/home_api_service.dart';
import 'package:flutter_app/feature/home/data/repo/project_repo.dart';
import 'package:flutter_app/feature/login/data/api/login_api_service.dart';
import 'package:flutter_app/feature/login/data/repos/login_repo.dart';
import 'package:flutter_app/feature/new_task/data/api/add_task_api_service.dart';
import 'package:flutter_app/feature/new_task/data/repo/add_task_repo.dart';
import 'package:flutter_app/feature/project_details/data/api/tasks_api_service.dart';
import 'package:flutter_app/feature/project_details/data/repo/task_repo.dart';
import 'package:flutter_app/feature/register/data/apis/register_api_service.dart';
import 'package:flutter_app/feature/register/data/repos/register_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {

  Dio dio = await DioFactory.getDio();

   //login
  getIt.registerLazySingleton<LoginApiService>(() => LoginApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(()=> LoginRepo(getIt()));

   //register
  getIt.registerLazySingleton<RegisterApiService>(() => RegisterApiService(dio));
  getIt.registerLazySingleton<RegisterRepo>(()=> RegisterRepo(getIt()));

  // projects
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<ProjectRepo>(()=> ProjectRepo(getIt()));

  //tasks
  getIt.registerLazySingleton<TaskApiService>(() => TaskApiService(dio));
  getIt.registerLazySingleton<TaskRepo>(()=> TaskRepo(getIt()));

   //add new task 
  getIt.registerLazySingleton<AddTaskApiService>(() => AddTaskApiService(dio));
  getIt.registerLazySingleton<AddTaskRepo>(()=> AddTaskRepo(getIt()));


}
