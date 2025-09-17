import 'package:flutter/material.dart';
import 'package:food_app/commons/app_images/assets_image.dart';
import 'package:food_app/commons/app_style/app_colors.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';
import 'package:food_app/commons/widgets/app_bar_widget.dart';
import 'package:food_app/commons/widgets/app_button.dart';
import 'package:food_app/commons/widgets/app_check_box.dart';
import 'package:food_app/commons/widgets/app_or_line.dart';
import 'package:food_app/commons/widgets/app_t_field.dart';
import 'package:food_app/commons/widgets/gogle_facbok_circle.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkBoxValue = false;
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
          Text('Sign Up Your Account', style: AppTextStyle.firstTStyle),
          AppSizes.screenGap(height: 15),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  labore et dolore magna aliqua.',
            style: AppTextStyle.secondTStyle,
          ),
          AppSizes.screenGap(),
          // Name Text Field
          AppTField(hintText: 'Enter your full name', lableText: 'Name'),
          AppSizes.screenGap(),
          // Email Text Field
          AppTField(hintText: 'Enter your email', lableText: 'Email'),
          AppSizes.screenGap(),
          // Password Text Field
          AppTField(
            hintText: 'Enter your password',
            lableText: 'Password',
            icon: Icon(
              Icons.remove_red_eye_rounded,
              color: AppColors.iconGreyColor,
            ),
          ),
          AppSizes.screenGap(),
          // Check Box
          AppCheckBox(
            onTap: () {
              setState(() {
                checkBoxValue = !checkBoxValue;
              });
            },
            value: checkBoxValue,
            text1: 'I agree to the',
            text2: 'terms',
            text3: '&',
            text4: 'condition',
          ),
          AppSizes.screenGap(height: 40),
          // Sign Up Button
          AppElevatedBtn(text: 'Sign Up'),
          AppSizes.screenGap(height: 40),
          // OR Line
          AppOrLine(),
          AppSizes.screenGap(),

          // Google and Facebook Row Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: AppSizes.columnSpacing(),
            children: [
              GoogleAndFacebookCirle(
                image: AppAssetsImages.googleImage,
                onTap: () {},
              ),
              GoogleAndFacebookCirle(
                image: AppAssetsImages.facebookImage,
                onTap: () {},
              ),
            ],
          ),
          AppSizes.screenGap(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already Have An Account? ',
                style: AppTextStyle.secondTStyle,
              ),
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
