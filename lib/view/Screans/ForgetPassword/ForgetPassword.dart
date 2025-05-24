import 'package:flutter/material.dart';
import 'package:itravelsai_app/util/Localization.dart';
import 'package:itravelsai_app/util/helperclass.dart';
import 'package:itravelsai_app/view/Screans/CheckYourEmailPage/CheckYourEmailPage.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F1FD),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(Icons.key, size: 40, color: Colors.deepPurple),
              ),
              const SizedBox(height: 30),
              const Text(
                "Forgot password?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "No worries, we’ll send you reset instructions.",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Email"),
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    navigateTo(context: context,screen: CheckYourEmailPage());

                  },
                  child:   Text(getLang(context: context,key: "Reset_password"),style: TextStyle(color: Colors.white),),
                ),
              ),
              const SizedBox(height: 24),
              TextButton.icon(
                onPressed: () {

                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, size: 18),
                label: const Text("Back to log in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}