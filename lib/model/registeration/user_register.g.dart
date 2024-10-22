// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      businessName: json['businessName'] as String?,
      informalName: json['informalName'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zipCode: (json['zipCode'] as num?)?.toInt(),
      registrationProof: json['registrationProof'] as String?,
      businessHours: json['businessHours'] == null
          ? null
          : BusinessHours.fromJson(
              json['businessHours'] as Map<String, dynamic>),
      deviceToken: json['deviceToken'] as String?,
      type: json['type'] as String?,
      socialId: json['socialId'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'role': instance.role,
      'businessName': instance.businessName,
      'informalName': instance.informalName,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zipCode': instance.zipCode,
      'registrationProof': instance.registrationProof,
      'businessHours': instance.businessHours,
      'deviceToken': instance.deviceToken,
      'type': instance.type,
      'socialId': instance.socialId,
    };

_$BusinessHoursImpl _$$BusinessHoursImplFromJson(Map<String, dynamic> json) =>
    _$BusinessHoursImpl(
      openTime: json['openTime'] as String?,
      closeTime: json['closeTime'] as String?,
    );

Map<String, dynamic> _$$BusinessHoursImplToJson(_$BusinessHoursImpl instance) =>
    <String, dynamic>{
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
    };
