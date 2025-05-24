import 'package:flutter/material.dart';

void navigateTo({required BuildContext context, required Widget screen}) {
  Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder:
            (context, animation, secondaryAnimation) =>
        screen,
        transitionDuration: Duration(
          milliseconds: 300,
        ),
        transitionsBuilder: (context, animation,
            secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween = Tween(begin: begin, end: end)
              .chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ));
}
void navigatereplacementTo(BuildContext context, Widget screen) {
  Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder:
            (context, animation, secondaryAnimation) =>
        screen,
        transitionDuration: Duration(
          milliseconds: 300,
        ),
        transitionsBuilder: (context, animation,
            secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween = Tween(begin: begin, end: end)
              .chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ));
}