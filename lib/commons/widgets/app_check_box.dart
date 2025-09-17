import 'package:flutter/material.dart';
import 'package:food_app/commons/app_style/app_colors.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';

class AppCheckBox extends StatelessWidget {
  final VoidCallback onTap;
  final bool value;
  final String text1;
  final String? text2;
  final String? text3;
  final String? text4;
  const AppCheckBox({
    super.key,
    required this.onTap,
    required this.value,
    required this.text1,
    this.text2,
    this.text3,
    this.text4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.iconColor, width: 2.5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 11,
                  width: 11,
                  decoration: BoxDecoration(
                    color: value ? AppColors.iconColor : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ),
        AppSizes.screenGap(width: 10),
        Row(
          children: [
            Text(
              '$text1 ',
              style: AppTextStyle.secondTStyle.copyWith(color: Colors.black),
            ),
            text2 != null
                ? Text(
                    '$text2 ',
                    style: AppTextStyle.secondTStyle.copyWith(
                      color: AppColors.butnColor,
                    ),
                  )
                : Container(),
            text3 != null
                ? Text(
                    '$text3 ',
                    style: AppTextStyle.secondTStyle.copyWith(
                      color: Colors.black,
                    ),
                  )
                : Container(),
            text4 != null
                ? Text(
                    '$text4 ',
                    style: AppTextStyle.secondTStyle.copyWith(
                      color: AppColors.butnColor,
                    ),
                  )
                : Container(),
          ],
        ),
      ],
    );
  }
}
