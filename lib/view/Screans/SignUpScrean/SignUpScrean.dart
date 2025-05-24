
import 'package:flutter/material.dart';
import 'package:itravelsai_app/util/helperclass.dart';
import 'package:itravelsai_app/util/images.dart';
import 'package:itravelsai_app/util/styles.dart';
import 'package:itravelsai_app/view/Screans/LoginScrean/LoginScrean.dart';
import 'package:itravelsai_app/view/Screans/CheckYourEmailPage/CheckEmailPageSignup.dart';
import 'package:itravelsai_app/util/app_colors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   ThiredColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  Center(child: Image.asset(Images.AppLogo, height: 70,fit: BoxFit.fill,)),

                  const SizedBox(height: 20),
                  const Text(
                    'Create an account',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name*',
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email*',
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password*',
                hintText: 'Create a password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                Icon(Icons.check_circle, color: Colors.grey),
                SizedBox(width: 8),
                Text('Must be at least 8 characters'),
              ],
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Icon(Icons.check_circle, color: Colors.grey),
                SizedBox(width: 8),
                Text('Must contain one special character'),
              ],
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  navigateTo(context: context,screen: CheckEmailPage());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: SecondColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Sign up',style: TextStyle(color: Colors.white),),
              ),
            ),
            const SizedBox(height: 16),
            const Center(child: Text('OR')),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton.icon(
                onPressed: () {


                },
                icon: Image.asset("assets/image/google.png", height: 20), // تأكد من إضافة أيقونة Google في assets
                label: const Text("Sign in with Google", style: TextStyle(color: Colors.black)),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  side: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: GestureDetector(
                onTap: () {
                  navigateTo(context: context,screen: LoginPage());

                },
                child: const Text(
                  'Already have an account? Log in',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF4B4B4B)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}