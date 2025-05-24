import 'package:flutter/material.dart';
import 'package:itravelsai_app/util/styles.dart';
import 'package:itravelsai_app/util/app_colors.dart';

class PasswordResetSuccessPage extends StatelessWidget {
  const PasswordResetSuccessPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   ThiredColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(Icons.check_circle_outline, size: 64, color: Colors.black87),
            const SizedBox(height: 24),
            const Text(
              'Password reset',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
              'Your password has been successfully reset.\nClick below to log in magically.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle continue to login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:SecondColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Continue',style: TextStyle(color: Colors.white),),
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {
Navigator.pop(context)     ;
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
    );
  }
}