import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sowlab/constants/tokens.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginModel with _$LoginModel {
  const factory LoginModel({
    required String email,
    required String password,
    String? role,
    required String deviceToken,
    required String type,
    required String socialId,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
