import 'package:flutter/material.dart';
import 'package:food_app/commons/app_images/assets_image.dart';
import 'package:food_app/commons/app_routes/app_routes.dart';
import 'package:food_app/ui_screen/onboarding_screens/onboarding_person.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPerson(
      isFirstOnbordding: true,
      image: AppAssetsImages.paymentImage,
      firstText: 'Easy payment',
      seconText:
          'Pay securely with just one tap. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Easy, fast, and reliable payment experience.',
      onTap: () {
        Navigator.pushReplacementNamed(context, AppRoutes.onBoardingScreen2);
      },
    );
  }
}
