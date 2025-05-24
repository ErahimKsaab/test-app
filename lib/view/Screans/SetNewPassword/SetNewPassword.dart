import 'package:flutter/material.dart';
import 'package:itravelsai_app/util/helperclass.dart';
import 'package:itravelsai_app/util/styles.dart';
import 'package:itravelsai_app/view/Screans/PasswordResetSuccessPage/PasswordReseted.dart';
import 'package:itravelsai_app/util/app_colors.dart';



class SetNewPasswordPage extends StatefulWidget {
  const SetNewPasswordPage({super.key});

  @override
  State<SetNewPasswordPage> createState() => _SetNewPasswordPageState();
}

class _SetNewPasswordPageState extends State<SetNewPasswordPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  bool isValidPassword(String password) {
    return password.length >= 8 && password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));
  }

  @override
  Widget build(BuildContext context) {
    final bool isValid = isValidPassword(_passwordController.text);

    return Scaffold(
      backgroundColor: ThiredColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              const Icon(Icons.lock_outline, size: 54, color: Colors.black87),
              const SizedBox(height: 24),
              const Text(
                'Set new password',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text(
                'Your new password must be different to\npreviously used passwords.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 32),
              TextField(
                controller: _passwordController,
                obscureText: true,
                onChanged: (_) => setState(() {}),
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    _passwordController.text.length >= 8
                        ? Icons.check_circle
                        : Icons.radio_button_unchecked,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 8),
                  const Text('Must be at least 8 characters'),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(
                    _passwordController.text.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))
                        ? Icons.check_circle
                        : Icons.radio_button_unchecked,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 8),
                  const Text('Must contain one special character'),
                ],
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: isValid ? () {

                  navigateTo(context: context,screen: PasswordResetSuccessPage());
                  } : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: SecondColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    disabledBackgroundColor: Colors.grey[400],
                  ),
                  child: const Text('Reset password',style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back, size: 18, color: Colors.black87),
                    SizedBox(width: 8),
                    Text(
                      'Back to log in',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}