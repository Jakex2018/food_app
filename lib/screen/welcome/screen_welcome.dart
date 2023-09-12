import 'package:flutter/material.dart';
import 'package:food_app_design/screen/welcome/components/welcome_elements.dart';

class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: WelcomeElemente(),
    );
  }
}