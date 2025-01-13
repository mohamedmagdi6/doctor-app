import 'package:doctor_app/features/onboarding/widgets/logo_and_app_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
          child: Column(children: [LogoAndAppTitle(), SizedBox(height: 40.h)]),
        ),
      ),
    );
  }
}
