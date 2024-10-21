import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'login_model.dart';

final userLoginProvider = FutureProvider.autoDispose.family<String, LoginModel>((ref, loginModel) async {
  final response = await loginUser(loginModel);
  return response;
});

Future<String> loginUser(LoginModel loginModel) async {
  const String url = 'https://sowlab.com/assignment/user/login';

  try {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(loginModel.toJson()),
    );

    if (response.statusCode == 200) {
      return 'Login successful';
    } else {
      throw Exception('Failed to login: ${response.body}');
    }
  } catch (e) {
    throw Exception('Error during login: $e');
  }
}
