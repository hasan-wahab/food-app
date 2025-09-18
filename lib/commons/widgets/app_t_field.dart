import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';

class AppTField extends StatelessWidget {
  final String? hintText;
  final String? lableText;
  final Function(String value)? onChanged;
  final TextEditingController? controller;
  final Widget? icon;
  final bool obscureText;
  final FocusNode? focusNode;
  final int? maxLength;
  final TextInputType? inputType;
  const AppTField({
    super.key,
    this.hintText,
    this.lableText,
    this.onChanged,
    this.controller,
    this.icon,
    this.obscureText = false,
    this.focusNode,
    this.maxLength,
    this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      maxLength: maxLength,
      focusNode: focusNode,
      validator: (value) {},
      obscureText: obscureText,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        counterText: '',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.borderRadius()),
        ),
        hintText: hintText,
        hintStyle: AppTextStyle.secondTStyle,
        label: Text(
          lableText != null ? lableText! : '',
          style: AppTextStyle.secondTStyle,
        ),
        suffixIcon: icon,
      ),
    );
  }
}
