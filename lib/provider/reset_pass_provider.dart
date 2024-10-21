import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'reset_password_model.dart';

final resetPasswordProvider = FutureProvider.autoDispose.family<String, ResetPasswordModel>((ref, resetPasswordModel) async {
  final response = await sendResetPasswordRequest(resetPasswordModel);
  return response;
});

Future<String> sendResetPasswordRequest(ResetPasswordModel resetPasswordModel) async {
  const String url = 'https://sowlab.com/assignment/user/reset-password';

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(resetPasswordModel.toJson()),
    );

    if (response.statusCode == 200) {
      return 'Password reset successfully';
    } else {
      throw Exception('Failed to reset password: ${response.body}');
    }
  } catch (e) {
    throw Exception('Error during password reset request: $e');
  }
}
