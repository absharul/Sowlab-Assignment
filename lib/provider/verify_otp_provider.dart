import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'verify_otp_model.dart';

final verifyOtpProvider = FutureProvider.autoDispose.family<String, VerifyOtpModel>((ref, verifyOtpModel) async {
  final response = await sendOtpVerificationRequest(verifyOtpModel);
  return response;
});

Future<String> sendOtpVerificationRequest(VerifyOtpModel verifyOtpModel) async {
  const String url = 'https://sowlab.com/assignment/user/verify-otp';

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(verifyOtpModel.toJson()),
    );

    if (response.statusCode == 200) {
      return 'OTP verified successfully';
    } else {
      throw Exception('Failed to verify OTP: ${response.body}');
    }
  } catch (e) {
    throw Exception('Error during OTP verification: $e');
  }
}
