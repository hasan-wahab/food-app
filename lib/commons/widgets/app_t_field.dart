import 'package:flutter/material.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';

class AppTField extends StatelessWidget {
  final String hintText;
  final String lableText;
  final Function(String value)? onChanged;
  final TextEditingController? controller;
  final Widget? icon;
  final bool obscureText;
  const AppTField({
    super.key,
    required this.hintText,
    required this.lableText,
    this.onChanged,
    this.controller,
    this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {},
      obscureText: obscureText,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.borderRadius()),
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.secondTStyle,
        label: Text(lableText, style: AppTextStyle.secondTStyle),
        suffixIcon: icon,
      ),
    );
  }
}
