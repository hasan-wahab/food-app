import 'package:flutter/material.dart';
import 'package:food_app/commons/app_routes/app_routes.dart';
import 'package:food_app/commons/app_style/app_colors.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';
import 'package:food_app/commons/widgets/app_bar_widget.dart';
import 'package:food_app/commons/widgets/app_button.dart';
import 'package:food_app/commons/widgets/app_t_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        leadingWidget: Icon(Icons.arrow_back),
        leadingOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: ListView(
        padding: AppSizes.bodyPadding(),
        children: [
          AppSizes.screenGap(height: 30),
          Text('Forget Your Password', style: AppTextStyle.firstTStyle),
          AppSizes.screenGap(height: 15),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  labore et dolore magna aliqua.',
            style: AppTextStyle.secondTStyle,
          ),
          AppSizes.screenGap(),

          // Email Text Field
          AppTField(hintText: 'Enter your email', lableText: 'Email'),

          AppSizes.screenGap(height: 40),
          // Send OTP  Button
          AppElevatedBtn(
            text: 'Send Code',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.otpScreen);
            },
          ),

          AppSizes.screenGap(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Or Back To ", style: AppTextStyle.secondTStyle),
              Text(
                'Sign In',
                style: AppTextStyle.secondTStyle.copyWith(
                  color: AppColors.butnColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
