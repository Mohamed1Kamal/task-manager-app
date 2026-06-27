
import 'package:flutter_app/feature/project_details/data/model/tasks_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_task_states.freezed.dart';
@freezed
class AddTaskStates<T> with _$AddTaskStates<T>{
const factory AddTaskStates.taskError(String error) = TaskError<T>;
const factory AddTaskStates.taskInit() = _TaskInit<T>;
const factory AddTaskStates.taskLoading() = TaskLoading<T>;
const factory AddTaskStates.taskSuccess(TaskModel data) = TaskSuccess<T>;
}