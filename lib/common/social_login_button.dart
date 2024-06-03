import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.buttonText,
      required this.buttonColor,
      required this.radius,
      required this.buttonIcon,
      required this.onPressed});

  final String buttonText;
  final Color buttonColor;
  final double radius;
  final Widget buttonIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
      ),
      child: Text(buttonText),
    );
  }
}
