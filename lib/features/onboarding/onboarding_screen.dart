import 'package:doctor_app/features/onboarding/widgets/logo_and_app_title.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [LogoAndAppTitle()]));
  }
}
