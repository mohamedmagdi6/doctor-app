import 'package:doctor_app/core/resources/assets_manager.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/text_style_manager.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String text;
  final bool withIcon;
  const AppButton({super.key, required this.text, this.withIcon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      height: 52,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, Routes.logingRoute);
        },
        iconAlignment: IconAlignment.end,
        icon: withIcon ? Image.asset(IconsAssets.arrowforward) : null,
        label: Text(text, style: TextStyles.textstyleS16W600White()),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: ColorsManager.primaryColor,
        ),
      ),
    );
  }
}
