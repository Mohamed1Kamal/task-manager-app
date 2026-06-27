import 'package:json_annotation/json_annotation.dart';

part 'task_request_model.g.dart';

@JsonSerializable()
class TaskRequestModel {
 
  final int projectId;
  final String title;
  final String priority;
  final String status;

  TaskRequestModel({
    required this.projectId,
    required this.title,
    required this.priority,
    required this.status,
  });
  
  factory TaskRequestModel.fromJson(Map<String, dynamic> json) => _$TaskRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$TaskRequestModelToJson(this);
}
