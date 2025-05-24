import 'package:flutter/material.dart';
import 'package:itravelsai_app/util/helperclass.dart';
import 'package:itravelsai_app/util/styles.dart';
import 'package:itravelsai_app/view/Screans/Entercodemanually/Entercodemanually.dart';

class CheckEmailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                   HSized50,

                const Icon(Icons.email_outlined, size: 60, color: Colors.deepPurple),
                HSized25,
                const Text(
                  'Check your email',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                HSized10,
                Text(
                  'We sent a verification link to\n${"Ebrahimkassab"}@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                HSized30,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {

                      navigateTo(context: context,screen: EmailVerificationScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Enter code manually',
                      style: TextStyle(fontSize: 16,color: Colors.white),
                    ),
                  ),
                ),
                WSized15,
                TextButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}