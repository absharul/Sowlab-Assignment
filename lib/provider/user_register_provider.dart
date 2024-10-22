import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import '../model/registeration/user_register.dart';

final userRegistrationProvider = FutureProvider.autoDispose.family<String, UserModel>((ref, userModel) async {
  final response = await registerUser(userModel);
  return response;
});

Future<String> registerUser(UserModel userModel) async {
  const String url = 'https://sowlab.com/assignment/user/register';


  try {
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(userModel.toJson()),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return 'Registration successful';
    } else {
      throw Exception('Failed to register user: ${response.body}');
    }
  } catch (e) {
    throw Exception('Error during registration: $e');
  }
}
