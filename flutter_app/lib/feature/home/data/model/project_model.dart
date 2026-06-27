import 'package:json_annotation/json_annotation.dart';

part 'project_model.g.dart';

@JsonSerializable()
class ProjectModel {
  // json respone retrieved from the API is in string format although the id and userId are integers in json
  final String id;
  final int userId;
  final String title;
  final String description;
  final String status;

  ProjectModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.description,
    required this.status,
  });
  
  factory ProjectModel.fromJson(Map<String, dynamic> json) => _$ProjectModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProjectModelToJson(this);
}
