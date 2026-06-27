// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_task_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddTaskStates<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTaskStates<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskStates<$T>()';
}


}

/// @nodoc
class $AddTaskStatesCopyWith<T,$Res>  {
$AddTaskStatesCopyWith(AddTaskStates<T> _, $Res Function(AddTaskStates<T>) __);
}


/// Adds pattern-matching-related methods to [AddTaskStates].
extension AddTaskStatesPatterns<T> on AddTaskStates<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TaskError<T> value)?  taskError,TResult Function( _TaskInit<T> value)?  taskInit,TResult Function( TaskLoading<T> value)?  taskLoading,TResult Function( TaskSuccess<T> value)?  taskSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TaskError() when taskError != null:
return taskError(_that);case _TaskInit() when taskInit != null:
return taskInit(_that);case TaskLoading() when taskLoading != null:
return taskLoading(_that);case TaskSuccess() when taskSuccess != null:
return taskSuccess(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TaskError<T> value)  taskError,required TResult Function( _TaskInit<T> value)  taskInit,required TResult Function( TaskLoading<T> value)  taskLoading,required TResult Function( TaskSuccess<T> value)  taskSuccess,}){
final _that = this;
switch (_that) {
case TaskError():
return taskError(_that);case _TaskInit():
return taskInit(_that);case TaskLoading():
return taskLoading(_that);case TaskSuccess():
return taskSuccess(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TaskError<T> value)?  taskError,TResult? Function( _TaskInit<T> value)?  taskInit,TResult? Function( TaskLoading<T> value)?  taskLoading,TResult? Function( TaskSuccess<T> value)?  taskSuccess,}){
final _that = this;
switch (_that) {
case TaskError() when taskError != null:
return taskError(_that);case _TaskInit() when taskInit != null:
return taskInit(_that);case TaskLoading() when taskLoading != null:
return taskLoading(_that);case TaskSuccess() when taskSuccess != null:
return taskSuccess(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  taskError,TResult Function()?  taskInit,TResult Function()?  taskLoading,TResult Function( TaskModel data)?  taskSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TaskError() when taskError != null:
return taskError(_that.error);case _TaskInit() when taskInit != null:
return taskInit();case TaskLoading() when taskLoading != null:
return taskLoading();case TaskSuccess() when taskSuccess != null:
return taskSuccess(_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  taskError,required TResult Function()  taskInit,required TResult Function()  taskLoading,required TResult Function( TaskModel data)  taskSuccess,}) {final _that = this;
switch (_that) {
case TaskError():
return taskError(_that.error);case _TaskInit():
return taskInit();case TaskLoading():
return taskLoading();case TaskSuccess():
return taskSuccess(_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  taskError,TResult? Function()?  taskInit,TResult? Function()?  taskLoading,TResult? Function( TaskModel data)?  taskSuccess,}) {final _that = this;
switch (_that) {
case TaskError() when taskError != null:
return taskError(_that.error);case _TaskInit() when taskInit != null:
return taskInit();case TaskLoading() when taskLoading != null:
return taskLoading();case TaskSuccess() when taskSuccess != null:
return taskSuccess(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class TaskError<T> implements AddTaskStates<T> {
  const TaskError(this.error);
  

 final  String error;

/// Create a copy of AddTaskStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskErrorCopyWith<T, TaskError<T>> get copyWith => _$TaskErrorCopyWithImpl<T, TaskError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'AddTaskStates<$T>.taskError(error: $error)';
}


}

/// @nodoc
abstract mixin class $TaskErrorCopyWith<T,$Res> implements $AddTaskStatesCopyWith<T, $Res> {
  factory $TaskErrorCopyWith(TaskError<T> value, $Res Function(TaskError<T>) _then) = _$TaskErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$TaskErrorCopyWithImpl<T,$Res>
    implements $TaskErrorCopyWith<T, $Res> {
  _$TaskErrorCopyWithImpl(this._self, this._then);

  final TaskError<T> _self;
  final $Res Function(TaskError<T>) _then;

/// Create a copy of AddTaskStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(TaskError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TaskInit<T> implements AddTaskStates<T> {
  const _TaskInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskInit<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskStates<$T>.taskInit()';
}


}




/// @nodoc


class TaskLoading<T> implements AddTaskStates<T> {
  const TaskLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddTaskStates<$T>.taskLoading()';
}


}




/// @nodoc


class TaskSuccess<T> implements AddTaskStates<T> {
  const TaskSuccess(this.data);
  

 final  TaskModel data;

/// Create a copy of AddTaskStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskSuccessCopyWith<T, TaskSuccess<T>> get copyWith => _$TaskSuccessCopyWithImpl<T, TaskSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskSuccess<T>&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'AddTaskStates<$T>.taskSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $TaskSuccessCopyWith<T,$Res> implements $AddTaskStatesCopyWith<T, $Res> {
  factory $TaskSuccessCopyWith(TaskSuccess<T> value, $Res Function(TaskSuccess<T>) _then) = _$TaskSuccessCopyWithImpl;
@useResult
$Res call({
 TaskModel data
});




}
/// @nodoc
class _$TaskSuccessCopyWithImpl<T,$Res>
    implements $TaskSuccessCopyWith<T, $Res> {
  _$TaskSuccessCopyWithImpl(this._self, this._then);

  final TaskSuccess<T> _self;
  final $Res Function(TaskSuccess<T>) _then;

/// Create a copy of AddTaskStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(TaskSuccess<T>(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}


}

// dart format on
