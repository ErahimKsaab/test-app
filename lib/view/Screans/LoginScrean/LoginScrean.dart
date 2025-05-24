
import 'package:flutter/material.dart';
import 'package:itravelsai_app/util/Localization.dart';
import 'package:itravelsai_app/util/helperclass.dart';
import 'package:itravelsai_app/util/images.dart';
import 'package:itravelsai_app/view/Screans/ForgetPassword/ForgetPassword.dart';
import 'package:itravelsai_app/view/Screans/SignUpScrean/SignUpScrean.dart';
import 'package:itravelsai_app/view/Screans/layout/NavBar.dart';
import 'package:itravelsai_app/view/widgets/SharedWidget.dart';
import 'package:itravelsai_app/view/Screans/HomePageScrean/HomePageScrean.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Center(child: Image.asset(Images.AppLogo, height: 70,fit: BoxFit.fill,)),
              const SizedBox(height: 40),
              const Text("Log in to your account", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text("Welcome back! Please enter your details.", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 30),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Email"),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text("Password"),
                  const SizedBox(height: 8),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter your Password",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                  ),
                  const Text("Remember for 30 days"),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      navigateTo(context: context,screen: ForgotPasswordPage());

                    },
                    child: const Text("Forgot password"),
                  )
                ],
              ),
              const SizedBox(height: 16),
              SharedButton(Title:getLang(context: context,key: "Login"),oninvite:(){
               navigateTo(context: context,screen: ButtomNavigation());
              } ,),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset("assets/image/google.png", height: 20), // تأكد من إضافة أيقونة Google في assets
                  label: const Text("Sign in with Google", style: TextStyle(color: Colors.black)),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    side: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              InkWell(onTap: () {

                navigateTo(context: context,screen: SignUpPage());
              },
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don’t have an account? ",
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Sign up",
                          style: const TextStyle(color: Colors.deepPurple),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}