import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sowlab/screens/logins/login_forgotpassword.dart';
import 'package:sowlab/screens/logins/login_screen.dart';
import 'package:sowlab/screens/onboarding_screen.dart';
import 'package:sowlab/screens/logins/reset_passoword.dart';
import 'package:sowlab/screens/signups/business_hours.dart';
import 'package:sowlab/screens/signups/completionpage.dart';
import 'package:sowlab/screens/signups/farm_info.dart';
import 'package:sowlab/screens/signups/sign_up.dart';
import 'package:sowlab/screens/signups/verification.dart';
import 'package:sowlab/screens/splash_screen.dart';
import 'package:sowlab/screens/logins/verify_otp.dart';

import 'model/registeration/user_register.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: GoRouter(
        initialLocation: '/', // Set initial route
        routes: [
          GoRoute(path: '/',
            builder: (context, state) {
              return SplashScreen(); // First screen shown
            },
          ),
          GoRoute(path: '/onboarding',
            builder: (context, state) {
              return OnboardingScreen();
            },
          ),
          GoRoute(path: '/login',
            builder: (context, state) {
              return LoginScreen();
            },
          ),
          GoRoute(path: '/forgot',
            builder: (context, state) {
              return LoginForgotpassword();
            },
          ),
          GoRoute(path: '/otp',
            builder: (context, state) {
              return VerifyOtp();
            },
          ),
          GoRoute(path: '/resetpass',
            builder: (context, state) {
              return ResetPassoword();
            },
          ),
          GoRoute(path: '/signup',
            builder: (context, state) {
              final userModel = UserModel(
                fullName: '',
                email: '',
                phone: '',
                password: '',
                role: '',
                businessName: '',
                informalName: '',
                address: '',
                city: '',
                state: '',
                zipCode: 0,
                registrationProof: '',
                businessHours: BusinessHours(openTime: '', closeTime: ''),
                deviceToken: '',
                type: '',
                socialId: '',
              );
              return SignUp();
            },
          ),
          GoRoute(path: '/farminfo',
            builder: (context, state) {
              return FarmInfo();
            },
          ),
          GoRoute(path: '/verification',
            builder: (context, state) {
              return Verification();
            },
          ),
          GoRoute(path: '/business',
            builder: (context, state) {
              return BusinessHoursSelection();
            },
          ),
          GoRoute(path: '/completionpage',
            builder: (context, state) {
              return CompletionPage();
            },
          )
        ],
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
