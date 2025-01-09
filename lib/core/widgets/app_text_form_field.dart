import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/text_style_manager.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key, this.isPassword, required this.hintText});
  final bool? isPassword;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword ?? false, // Hides the text for password input
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Sets border radius
          borderSide: BorderSide(
            color: AppColors.primaryColor,
          ), // Sets border color
        ),
        hintText: hintText,
        hintStyle: TextStyleManager.textstyleS14W400Grey(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), // Sets border radius
        ),
        suffixIcon:
            isPassword == true
                ? Icon(Icons.remove_red_eye, color: AppColors.textGreyColor)
                : SizedBox(), // Eye icon as leading icon
      ),
    );
  }
}
