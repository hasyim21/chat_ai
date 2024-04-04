import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/my_colors.dart';
import '../../chat/screens/chat_screen.dart';
import '../../auth/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset(
        'assets/images/logo.png',
        width: 75.0,
      ),
      backgroundColor: MyColors.primary,
      showLoader: false,
      durationInSeconds: 2,
      navigator: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            return const ChatScreen();
          }
          return const LoginScreen();
        },
      ),
    );
  }
}
