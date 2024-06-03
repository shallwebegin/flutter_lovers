import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {super.key,
      required this.buttonText,
      this.buttonColor = Colors.purple,
      this.radius = 16,
      this.yukseklik = 50,
      required this.buttonIcon,
      required this.onPressed});

  final String buttonText;
  final Color buttonColor;
  final double radius;
  final double yukseklik;
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [buttonIcon, Text(buttonText), Container()],
      ),
    );
  }
}
