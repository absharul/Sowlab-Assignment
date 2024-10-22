import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sowlab/constants/tokens.dart';
import 'package:sowlab/provider/user_login_provider.dart';

import '../../model/login/login_model.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _email;
  String? _password;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text('Farmereats')),
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Welcome back!',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      const Text("New here?"),
                      TextButton(
                        onPressed: () {
                          context.go('/signup');
                        },
                        child: const Text(
                          "Create account",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      prefixIcon: const Icon(Icons.alternate_email),
                      filled: true,
                      fillColor:
                          const Color(0x6ecbc5c5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                            color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _email = value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: TextButton(
                        onPressed: () {
                          context.go("/forgot");
                        },
                        child: const Text('Forgot?',style: TextStyle(fontSize: 12.0,color: Colors.redAccent),),
                      ),
                      filled: true,
                      fillColor: const Color(0x6ecbc5c5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.blue),
                      ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _password = value;
                    },
                  ),

                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          final  loginmodel = LoginModel(
                           email: _emailController.text,
                            password: _passwordContoller.text,
                            deviceToken: Tokens.deviceToken,
                            type: Tokens.type,
                            socialId: Tokens.socialId,
                          );
                          try {
                            ref.read(userLoginProvider(loginmodel));
                            context.go('/completionpage');
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('login failed: $e')),
                            );
                          }
                        }
                      },
                      style: const ButtonStyle(
                          minimumSize:
                              WidgetStatePropertyAll(Size(double.infinity, 50)),
                          maximumSize:
                              WidgetStatePropertyAll(Size(double.infinity, 50)),
                          foregroundColor: WidgetStatePropertyAll(Colors.white),
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.redAccent)),
                      child: const Text('Login'),
                    ),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('or login with'),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              border: Border.all()),
                          child: const Center(
                              child: Image(
                            image: AssetImage('assets/logos/google.png'),
                            height: 30,
                            width: 30,
                          ))),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              border: Border.all()),
                          child: const Center(
                              child: Image(
                            image: AssetImage('assets/logos/apple.png'),
                            height: 30,
                            width: 30,
                          ))),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              border: Border.all()),
                          child: const Center(
                              child: Image(
                            image: AssetImage('assets/logos/facebook.png'),
                            height: 30,
                            width: 30,
                          ))),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
