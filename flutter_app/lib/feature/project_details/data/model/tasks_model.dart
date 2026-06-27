import 'package:json_annotation/json_annotation.dart';

part 'tasks_model.g.dart';

@JsonSerializable()
class TaskModel {
  // json respone retrieved from the API is in string format although the id and projectId are integers in json
  final String id;
  final int projectId;
  final String title;
  final String priority;
  final String status;

  TaskModel({
    required this.id,
    required this.projectId,
    required this.title,
    required this.priority,
    required this.status,
  });
  
  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);
  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
