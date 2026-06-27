// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskRequestModel _$TaskRequestModelFromJson(Map<String, dynamic> json) =>
    TaskRequestModel(
      projectId: (json['projectId'] as num).toInt(),
      title: json['title'] as String,
      priority: json['priority'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$TaskRequestModelToJson(TaskRequestModel instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'title': instance.title,
      'priority': instance.priority,
      'status': instance.status,
    };
