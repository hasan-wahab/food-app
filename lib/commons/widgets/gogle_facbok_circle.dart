import 'package:flutter/material.dart';
import 'package:food_app/commons/app_images/assets_image.dart';
import 'package:food_app/commons/app_style/app_colors.dart';

class GoogleAndFacebookCirle extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  const GoogleAndFacebookCirle({
    super.key,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryGreyColor, width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        height: 50,
        width: 50,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              height: 35,
              width: 35,
              child: Image.asset(image),
            ),
          ],
        ),
      ),
    );
  }
}
