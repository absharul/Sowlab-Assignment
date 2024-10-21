import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'forgot_password_model.dart';

final forgotPasswordProvider = FutureProvider.autoDispose.family<String, ForgotPasswordModel>((ref, forgotPasswordModel) async {
  final response = await sendForgotPasswordRequest(forgotPasswordModel);
  return response;
});

Future<String> sendForgotPasswordRequest(ForgotPasswordModel forgotPasswordModel) async {
  const String url = 'https://sowlab.com/assignment/user/forgot-password';

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(forgotPasswordModel.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return 'OTP sent successfully';
    } else {
      throw Exception('Failed to send OTP: ${response.body}');
    }
  } catch (e) {
    throw Exception('Error during forgot password request: $e');
  }
}
