import 'package:flutter/material.dart';
import 'package:food_app/commons/app_style/app_colors.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';

class AppElevatedBtn extends StatelessWidget {
  final String? text;
  final Widget? icon;
  final VoidCallback? onTap;
  final double height;
  final double? width;
  final bool isCircle;

  const AppElevatedBtn({
    super.key,
    this.text,
    this.onTap,
    this.height = 50,
    this.width,
    this.icon,
    this.isCircle = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: isCircle ? 70 : height,
            width: isCircle ? 70 : width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isCircle ? 35 : 12),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryGreyColor,
                  offset: Offset(0, 3),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
          ),
          Container(
            height: isCircle ? 77 : height,
            width: isCircle ? 77 : width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isCircle ? 77 / 2 : 12),
              color: AppColors.butnColor,
            ),
            child: text != null
                ? Text(text!, style: AppTextStyle.btnTStyle)
                : icon,
          ),
          Container(
            height: isCircle ? 70 : height,
            width: isCircle ? 70 : width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isCircle ? 35 : 12),
              color: AppColors.butnwhiteColor,
            ),
            child: text != null
                ? Text(text!, style: AppTextStyle.btnTStyle)
                : icon,
          ),
          Container(
            height: isCircle ? 63 : height,
            width: isCircle ? 63 : width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isCircle ? 63 / 2 : 12),
              color: AppColors.butnColor,
            ),
            child: text != null
                ? Text(text!, style: AppTextStyle.btnTStyle)
                : icon,
          ),
        ],
      ),
    );
  }
}
