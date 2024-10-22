import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sowlab/constants/tokens.dart';
import 'package:sowlab/model/registeration/user_register.dart';
import 'package:sowlab/provider/user_register_provider.dart';

class SignUp extends ConsumerStatefulWidget {

  SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? _email;
  String? _name;
  String? _password;

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmpasswordController = TextEditingController();


  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    super.dispose();
  }


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
                        'Welcome!',
                        style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10.0),
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
                    ),
                    const SizedBox(height: 10.0),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('or login with'),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          hintText: 'Enter your Name',
                          prefixIcon: const Icon(Icons.person),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your Name';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _name = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          prefixIcon: const Icon(Icons.alternate_email),
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
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Phone',
                          hintText: 'Phone Number',
                          prefixIcon: const Icon(Icons.phone),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your number';
                          }
                          if (value.length != 10) {
                            return 'Number length must be 10';
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
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'New Password',
                          hintText: 'Password',
                          prefixIcon: const Icon(Icons.lock),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter new password';
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
                        controller: _confirmpasswordController,
                        decoration: InputDecoration(
                          labelText: 'Re-enter password',
                          hintText: 'password',
                          prefixIcon: const Icon(Icons.lock),
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
                            return 'Please enter confirm password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value;
                        },
                      ),    // need controller
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                              onPressed: () {
                                context.go('/login');
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    decoration: TextDecoration.underline),
                              )),
                          const Expanded(child: SizedBox()),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  final userModel = UserModel(
                                    fullName: _nameController.text,
                                    email: _emailController.text,
                                    phone: _phoneController.text,
                                    password: _passwordController.text,
                                    deviceToken: Tokens.deviceToken,
                                    type: Tokens.type,
                                    socialId: Tokens.socialId,
                                  );
                                  try {
                                    ref.read(userRegistrationProvider(userModel));
                                    context.go('/farminfo');
                                  } catch (e) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text('Registration failed: $e')),
                                    );
                                  }
                                }
                              },
                              style: const ButtonStyle(
                                  minimumSize: WidgetStatePropertyAll(
                                      Size(double.infinity, 50)),
                                  maximumSize: WidgetStatePropertyAll(
                                      Size(double.infinity, 50)),
                                  foregroundColor:
                                  WidgetStatePropertyAll(Colors.white),
                                  backgroundColor:
                                  WidgetStatePropertyAll(Colors.redAccent)),
                              child: const Text('Continue'),
                            ),
                          ),
                        ]),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
