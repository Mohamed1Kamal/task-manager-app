
import 'package:flutter_app/feature/project_details/data/model/tasks_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_states.freezed.dart';
@freezed
class TaskStates<T> with _$TaskStates<T>{
const factory TaskStates.taskError(String error) = TaskError<T>;
const factory TaskStates.taskInit() = _TaskInit<T>;
const factory TaskStates.taskLoading() = TaskLoading<T>;
const factory TaskStates.taskSuccess(List<TaskModel> data) = TaskSuccess<T>;
}