import 'package:flutter/material.dart';
import 'package:food_app/commons/app_images/assets_image.dart';
import 'package:food_app/commons/app_routes/app_routes.dart';
import 'package:food_app/ui_screen/onboarding_screens/onboarding_person.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPerson(
      buttonText: 'Sign Up',
      buttonText2: 'Sign In',
      image: AppAssetsImages.joinUsOrSignInImage,
      firstText: 'Join Us Or Sign In',
      seconText:
          'Pay securely with just one tap. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Easy, fast, and reliable payment experience.',
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.signUpScreen);
      },
      onTap2: () {
        Navigator.pushNamed(context, AppRoutes.signInScreen);
      },
    );
  }
}
