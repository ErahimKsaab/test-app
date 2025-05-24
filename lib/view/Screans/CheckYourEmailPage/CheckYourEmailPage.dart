import 'package:flutter/material.dart';
import 'package:itravelsai_app/util/app_colors.dart';
import 'package:itravelsai_app/util/helperclass.dart';
import 'package:itravelsai_app/util/styles.dart';

import 'package:itravelsai_app/view/Screans/SetNewPassword/SetNewPassword.dart';
import 'package:itravelsai_app/util/styles.dart';

class CheckYourEmailPage extends StatelessWidget {
  const CheckYourEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   ThiredColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            const Icon(Icons.email_outlined, size: 64, color: Colors.black87),
            const SizedBox(height: 24),
            const Text(
              'Check your email',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'We sent a password reset link to',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 4),
            const Text(
              'zahir-0940@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
     navigateTo(context: context,screen: SetNewPasswordPage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: SecondColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Open email app',
                  style: TextStyle(fontSize: 16,color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Didn't receive the email? ",
                    style: TextStyle(color: Colors.black54)),
                GestureDetector(
                  onTap: () {
                    // Resend email logic
                  },
                  child: Text(
                    'Click to resend',
                    style: TextStyle(
                        color: SecondColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
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
                        fontWeight: FontWeight.w500),
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