import 'package:doctor_app/core/resources/text_style_manager.dart';
import 'package:doctor_app/core/widgets/app_button.dart';
import 'package:doctor_app/features/onboarding/widgets/logo_and_app_title.dart';
import 'package:doctor_app/features/onboarding/widgets/stack_of_onboarding_screen.dart';
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
          child: Column(
            children: [
              LogoAndAppTitle(),
              SizedBox(height: 40.h),
              StackOfOnboardingScreen(),
              SizedBox(height: 15.h),
              Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                style: TextStyles.textstyleS10W400Grey(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.h),
              AppButton(text: 'Get Started'),
            ],
          ),
        ),
      ),
    );
  }
}
