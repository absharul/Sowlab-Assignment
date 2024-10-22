import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register.freezed.dart';
part 'user_register.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    String? fullName,
    String? email,
    String? phone,
    String? password,
    String? role,
    String? businessName,
    String? informalName,
    String? address, // Nullable
    String? city,    // Nullable
    String? state,   // Nullable
    int? zipCode,    // Nullable
    String? registrationProof, // Nullable
    BusinessHours? businessHours, // Nullable
    String? deviceToken,  // Nullable
    String? type,         // Nullable
    String? socialId,     // Nullable
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class BusinessHours with _$BusinessHours {
  const factory BusinessHours({
    String? openTime,   // Nullable
    String? closeTime,  // Nullable
  }) = _BusinessHours;

  factory BusinessHours.fromJson(Map<String, dynamic> json) =>
      _$BusinessHoursFromJson(json);
}

