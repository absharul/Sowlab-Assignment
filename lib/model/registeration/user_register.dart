import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register.freezed.dart';
part 'user_register.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String fullName,
    required String email,
    required String phone,
    required String password,
    required String role,
    required String businessName,
    required String informalName,
    required String address,
    required String city,
    required String state,
    required int zipCode,
    required String registrationProof,
    required BusinessHours businessHours,
    required String deviceToken,
    required String type,
    required String socialId,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class BusinessHours with _$BusinessHours {
  const factory BusinessHours({
    required String openTime,
    required String closeTime,
  }) = _BusinessHours;

  factory BusinessHours.fromJson(Map<String, dynamic> json) =>
      _$BusinessHoursFromJson(json);
}
