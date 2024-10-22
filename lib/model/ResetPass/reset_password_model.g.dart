// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordModelImpl _$$ResetPasswordModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordModelImpl(
      token: json['token'] as String,
      password: json['password'] as String,
      cpassword: json['cpassword'] as String,
    );

Map<String, dynamic> _$$ResetPasswordModelImplToJson(
        _$ResetPasswordModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'password': instance.password,
      'cpassword': instance.cpassword,
    };
