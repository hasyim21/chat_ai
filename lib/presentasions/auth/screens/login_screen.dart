import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../data/services/auth_service.dart';
import '../../../core/theme/my_colors.dart';
import '../../../core/utils/validator.dart';
import '../../../core/widgets/my_elevated_button.dart';
import '../../../core/widgets/my_textfield.dart';
import '../../chat/screens/chat_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKeyEmail = GlobalKey<FormState>();
  final _formKeyPassword = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 75.0,
                height: 86.4,
              ),
              const SizedBox(
                height: 36.0,
              ),
              const Center(
                child: Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Form(
                key: _formKeyEmail,
                child: MyTextFormField(
                  hintText: 'Email',
                  controller: _emailController,
                  validator: (value) => Validator.validateEmail(email: value!),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Form(
                key: _formKeyPassword,
                child: MyTextFormField(
                  hintText: 'Password',
                  obscureText: true,
                  controller: _passwordController,
                  validator: (value) =>
                      Validator.validatePassword(password: value!),
                ),
              ),
              const SizedBox(
                height: 36.0,
              ),
              (_isLoading)
                  ? Center(
                      child: CircularProgressIndicator(
                        color: MyColors.blue,
                      ),
                    )
                  : MyElevatedButton(
                      label: 'Login',
                      onPressed: () async {
                        setState(() {
                          _isLoading = true;
                        });
                        if (_formKeyEmail.currentState!.validate() &&
                            _formKeyPassword.currentState!.validate()) {
                          User? user =
                              await AuthService.signInUsingEmailPassword(
                            email: _emailController.text,
                            password: _passwordController.text,
                          );
                          if (user != null && context.mounted) {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (context) => const ChatScreen(),
                                ),
                                (route) => false);
                          }
                        }
                      },
                    ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: MyColors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
