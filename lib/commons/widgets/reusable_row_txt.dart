import 'package:flutter/material.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';

class ReusableRowTxt extends StatelessWidget {
  const ReusableRowTxt({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('data', style: AppTextStyle.firstTStyle),
        Spacer(),
        Text('Data', style: AppTextStyle.secondTStyle),
      ],
    );
  }
}
