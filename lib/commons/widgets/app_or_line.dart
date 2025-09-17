import 'package:flutter/material.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';

class AppOrLine extends StatelessWidget {
  const AppOrLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(height: 1, color: Colors.black)),

        Padding(
          padding: AppSizes.bodyPadding(horizantal: 5, vertical: 0),
          child: Text(
            'OR',
            style: AppTextStyle.firstTStyle.copyWith(fontSize: 16),
          ),
        ),
        Expanded(child: Container(height: 1, color: Colors.black)),
      ],
    );
  }
}
