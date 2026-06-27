
import 'package:flutter_app/feature/home/data/model/project_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_state.freezed.dart';
@freezed
class ProjectState<T> with _$ProjectState<T>{
const factory ProjectState.error(String error) = Error<T>;
const factory ProjectState.init() = _Init<T>;
const factory ProjectState.loading() = Loading<T>;
const factory ProjectState.success(List<ProjectModel> data) = Success<T>;
}