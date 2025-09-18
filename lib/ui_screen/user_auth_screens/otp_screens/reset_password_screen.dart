import 'package:flutter/material.dart';
import 'package:food_app/commons/app_routes/app_routes.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';
import 'package:food_app/commons/widgets/app_bar_widget.dart';
import 'package:food_app/commons/widgets/app_button.dart';
import 'package:food_app/commons/widgets/app_dailog_pop_up.dart';
import 'package:food_app/commons/widgets/app_t_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
          Text('Rest Your Password', style: AppTextStyle.firstTStyle),
          AppSizes.screenGap(height: 15),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  labore et dolore magna aliqua',
            style: AppTextStyle.secondTStyle,
          ),
          AppSizes.screenGap(height: 50),

          // New Password Text fields
          AppTField(
            hintText: 'Enter your new password',
            lableText: 'New Password',
          ),
          AppSizes.screenGap(),
          AppTField(
            hintText: 'Confirm your new password',
            lableText: 'Confirm Password',
          ),
          AppSizes.screenGap(height: 50),
          AppElevatedBtn(
            text: 'Reset Password',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return ShowDialogPopUp(
                    hedding: 'Reset Your Password !',
                    content:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                    actions: [
                      AppElevatedBtn(
                        width: 150,
                        height: 40,
                        text: 'Go To Home',
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.naveBar);
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
