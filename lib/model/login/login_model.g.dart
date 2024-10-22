// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      role: json['role'] as String?,
      deviceToken: json['deviceToken'] as String,
      type: json['type'] as String,
      socialId: json['socialId'] as String,
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'deviceToken': instance.deviceToken,
      'type': instance.type,
      'socialId': instance.socialId,
    };
