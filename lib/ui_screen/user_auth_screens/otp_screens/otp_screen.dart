import 'package:flutter/material.dart';
import 'package:food_app/commons/app_routes/app_routes.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';
import 'package:food_app/commons/widgets/app_bar_widget.dart';
import 'package:food_app/commons/widgets/app_button.dart';
import 'package:food_app/commons/widgets/app_t_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
          Text('Enter Your OTP', style: AppTextStyle.firstTStyle),
          AppSizes.screenGap(height: 15),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  labore et dolore magna aliqua',
            style: AppTextStyle.secondTStyle,
          ),
          AppSizes.screenGap(height: 50),
          // OPT Text fields
          Row(
            spacing: AppSizes.columnSpacing(),
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              return SizedBox(
                height: 60,
                width: 60,
                child: AppTField(
                  inputType: TextInputType.number,
                  maxLength: 1,
                  onChanged: (value) {
                    if (value.isNotEmpty && index < 3) {
                      FocusScope.of(context).nextFocus();
                    } else if (value.isEmpty && index > 0) {
                      FocusScope.of(context).previousFocus();
                    }
                  },
                ),
              );
            }),
          ),
          AppSizes.screenGap(height: 50),
          AppElevatedBtn(
            text: 'Verify',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.resetPasswordScreen);
            },
          ),
        ],
      ),
    );
  }
}
