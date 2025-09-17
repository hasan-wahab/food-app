import 'package:flutter/material.dart';
import 'package:food_app/commons/app_style/app_colors.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';

import 'package:food_app/commons/widgets/app_button.dart';

class OnboardingPerson extends StatelessWidget {
  final String image;
  final String firstText;
  final String seconText;
  final String? buttonText;
  final String? buttonText2;
  final VoidCallback onTap;
  final VoidCallback? onTap2;
  final bool isFirstOnbordding;

  const OnboardingPerson({
    super.key,
    required this.image,
    required this.firstText,
    required this.seconText,
    required this.onTap,
    this.isFirstOnbordding = false,
    this.buttonText,
    this.buttonText2,
    this.onTap2,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSizes.bodyPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: AppSizes.columnSpacing(),
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Text(firstText, style: AppTextStyle.firstTStyle),
            Text(maxLines: 2, seconText, style: AppTextStyle.secondTStyle),
            AppSizes.screenGap(height: 30),

            isFirstOnbordding
                ? AppElevatedBtn(
                    isCircle: isFirstOnbordding ? true : false,
                    onTap: onTap,
                    icon: isFirstOnbordding == true
                        ? Icon(
                            Icons.arrow_forward,
                            color: AppColors.iconWhiteColor,
                          )
                        : Text(
                            buttonText != null ? buttonText! : '',
                            style: AppTextStyle.btnTStyle,
                          ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppElevatedBtn(
                        height: 50,
                        width: buttonText2 != null
                            ? AppSizes.screenWidth(context, dividion: 2.2)
                            : null,
                        isCircle: isFirstOnbordding ? true : false,
                        onTap: onTap,
                        icon: isFirstOnbordding == true
                            ? Icon(
                                Icons.arrow_forward,
                                color: AppColors.iconWhiteColor,
                              )
                            : Text(
                                buttonText != null ? buttonText! : '',
                                style: AppTextStyle.btnTStyle,
                              ),
                      ),
                      AppElevatedBtn(
                        height: 50,
                        width: buttonText2 != null
                            ? AppSizes.screenWidth(context, dividion: 2.2)
                            : null,
                        isCircle: isFirstOnbordding ? true : false,
                        onTap: onTap2,
                        icon: isFirstOnbordding == true
                            ? Icon(
                                Icons.arrow_forward,
                                color: AppColors.iconWhiteColor,
                              )
                            : Text(
                                buttonText2 != null ? buttonText2! : '',
                                style: AppTextStyle.btnTStyle,
                              ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
