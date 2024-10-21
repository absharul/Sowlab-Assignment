import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_model.freezed.dart';
part 'reset_password_model.g.dart';

@freezed
class ResetPasswordModel with _$ResetPasswordModel {
  const factory ResetPasswordModel({
    required String token,
    required String password,
    required String cpassword,
  }) = _ResetPasswordModel;

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordModelFromJson(json);
}
