import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo_1/constants/global.dart';
import 'package:flutter_demo_1/route/routes.dart';
import 'package:flutter_demo_1/widgets/system_loading.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleLogin() {
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    logger.d('Username: $username');
    logger.d('Password: $password');

    SystemLoading.showLoading();

    Timer(const Duration(seconds: 2), () {
      SystemLoading.closeLoading();
      globalToken = 'test token';
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('登录成功，欢迎$username'),
        ),
      );
      Navigator.pushNamed(
        context,
        RoutePath.tab,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset:
          true, // Ensure the view resizes when keyboard appears
      body: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          viewInsets:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            // Ensures that the whole ListView is scrollable
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            children: <Widget>[
              const Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFCC00),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Please log in to continue',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 40),
              _buildTextField(
                controller: _usernameController,
                hintText: 'Username',
                icon: Icons.person,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: _passwordController,
                hintText: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: _handleLogin,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFCC00),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navigate to sign-up or forgot password page
                },
                child: const Text(
                  'Forgot Password?',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: const Color(0xFFFFCC00)),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFFFCC00), width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
