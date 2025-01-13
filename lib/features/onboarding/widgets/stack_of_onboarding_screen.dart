import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StackOfOnboardingScreen extends StatelessWidget {
  const StackOfOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/logo_obacity_background.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops:
                  List.empty(growable: true)
                    ..add(0.1)
                    ..add(0.3),
              colors: [
                AppColors.whiteColor,
                AppColors.whiteColor.withAlpha(10),
              ],
            ),
          ),
          child: Image.asset('assets/images/doctor_image.png'),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor \nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyleManager.textstyleS32W700Primary(),
          ),
        ),
      ],
    );
  }
}
