import 'package:flutter/material.dart';

class SharedButton extends StatelessWidget {
   String Title;
  Function?oninvite;
 SharedButton({required this.Title,required this.oninvite});

 @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed:()=> oninvite!(),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF7849F7),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          Title??'',
          style: const TextStyle(fontSize: 18,color: Colors.white),
        ),
      ),
    );
  }
}
