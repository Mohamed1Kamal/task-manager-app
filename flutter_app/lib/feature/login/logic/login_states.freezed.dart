// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginStates<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginStates<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginStates<$T>()';
}


}

/// @nodoc
class $LoginStatesCopyWith<T,$Res>  {
$LoginStatesCopyWith(LoginStates<T> _, $Res Function(LoginStates<T>) __);
}


/// Adds pattern-matching-related methods to [LoginStates].
extension LoginStatesPatterns<T> on LoginStates<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginError<T> value)?  loginError,TResult Function( _LoginInit<T> value)?  loginInit,TResult Function( LoginLoading<T> value)?  loginLoading,TResult Function( LoginSuccess<T> value)?  loginSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginError() when loginError != null:
return loginError(_that);case _LoginInit() when loginInit != null:
return loginInit(_that);case LoginLoading() when loginLoading != null:
return loginLoading(_that);case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginError<T> value)  loginError,required TResult Function( _LoginInit<T> value)  loginInit,required TResult Function( LoginLoading<T> value)  loginLoading,required TResult Function( LoginSuccess<T> value)  loginSuccess,}){
final _that = this;
switch (_that) {
case LoginError():
return loginError(_that);case _LoginInit():
return loginInit(_that);case LoginLoading():
return loginLoading(_that);case LoginSuccess():
return loginSuccess(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginError<T> value)?  loginError,TResult? Function( _LoginInit<T> value)?  loginInit,TResult? Function( LoginLoading<T> value)?  loginLoading,TResult? Function( LoginSuccess<T> value)?  loginSuccess,}){
final _that = this;
switch (_that) {
case LoginError() when loginError != null:
return loginError(_that);case _LoginInit() when loginInit != null:
return loginInit(_that);case LoginLoading() when loginLoading != null:
return loginLoading(_that);case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String error)?  loginError,TResult Function()?  loginInit,TResult Function()?  loginLoading,TResult Function( UserModel data)?  loginSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginError() when loginError != null:
return loginError(_that.error);case _LoginInit() when loginInit != null:
return loginInit();case LoginLoading() when loginLoading != null:
return loginLoading();case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String error)  loginError,required TResult Function()  loginInit,required TResult Function()  loginLoading,required TResult Function( UserModel data)  loginSuccess,}) {final _that = this;
switch (_that) {
case LoginError():
return loginError(_that.error);case _LoginInit():
return loginInit();case LoginLoading():
return loginLoading();case LoginSuccess():
return loginSuccess(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String error)?  loginError,TResult? Function()?  loginInit,TResult? Function()?  loginLoading,TResult? Function( UserModel data)?  loginSuccess,}) {final _that = this;
switch (_that) {
case LoginError() when loginError != null:
return loginError(_that.error);case _LoginInit() when loginInit != null:
return loginInit();case LoginLoading() when loginLoading != null:
return loginLoading();case LoginSuccess() when loginSuccess != null:
return loginSuccess(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class LoginError<T> implements LoginStates<T> {
  const LoginError(this.error);
  

 final  String error;

/// Create a copy of LoginStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginErrorCopyWith<T, LoginError<T>> get copyWith => _$LoginErrorCopyWithImpl<T, LoginError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'LoginStates<$T>.loginError(error: $error)';
}


}

/// @nodoc
abstract mixin class $LoginErrorCopyWith<T,$Res> implements $LoginStatesCopyWith<T, $Res> {
  factory $LoginErrorCopyWith(LoginError<T> value, $Res Function(LoginError<T>) _then) = _$LoginErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$LoginErrorCopyWithImpl<T,$Res>
    implements $LoginErrorCopyWith<T, $Res> {
  _$LoginErrorCopyWithImpl(this._self, this._then);

  final LoginError<T> _self;
  final $Res Function(LoginError<T>) _then;

/// Create a copy of LoginStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(LoginError<T>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoginInit<T> implements LoginStates<T> {
  const _LoginInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginInit<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginStates<$T>.loginInit()';
}


}




/// @nodoc


class LoginLoading<T> implements LoginStates<T> {
  const LoginLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginStates<$T>.loginLoading()';
}


}




/// @nodoc


class LoginSuccess<T> implements LoginStates<T> {
  const LoginSuccess(this.data);
  

 final  UserModel data;

/// Create a copy of LoginStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSuccessCopyWith<T, LoginSuccess<T>> get copyWith => _$LoginSuccessCopyWithImpl<T, LoginSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSuccess<T>&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'LoginStates<$T>.loginSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class $LoginSuccessCopyWith<T,$Res> implements $LoginStatesCopyWith<T, $Res> {
  factory $LoginSuccessCopyWith(LoginSuccess<T> value, $Res Function(LoginSuccess<T>) _then) = _$LoginSuccessCopyWithImpl;
@useResult
$Res call({
 UserModel data
});




}
/// @nodoc
class _$LoginSuccessCopyWithImpl<T,$Res>
    implements $LoginSuccessCopyWith<T, $Res> {
  _$LoginSuccessCopyWithImpl(this._self, this._then);

  final LoginSuccess<T> _self;
  final $Res Function(LoginSuccess<T>) _then;

/// Create a copy of LoginStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(LoginSuccess<T>(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}


}

// dart format on
