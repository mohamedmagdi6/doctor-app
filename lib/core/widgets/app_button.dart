import 'package:doctor_app/core/resources/assets_manager.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String text;
  final bool withIcon;
  const AppButton({super.key, required this.text, this.withIcon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 45.h,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {},
        iconAlignment: IconAlignment.end,
        icon: withIcon ? Image.asset(IconsAssets.arrowforward) : null,
        label: Text(text, style: const TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: AppColors.primaryColor,
        ),
      ),
    );
  }
}
