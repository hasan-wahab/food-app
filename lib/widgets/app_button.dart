import 'package:flutter/material.dart';
import 'package:food_app/app_styles/app_colors.dart';
import 'package:food_app/app_styles/app_text_style.dart';

class AppElevatedBtn extends StatelessWidget {
  final String text;
  final  bool isCircle;
  final VoidCallback onTap;
  final double height;
  final double? width;
  
  const AppElevatedBtn({super.key, required this.text, required this.onTap,this.isCircle=false,  this.height=60,  this.width});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
              height:height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryGreyColor,
                    offset: Offset(0, 3),
                    spreadRadius: 1,
                    blurRadius: 5
                  )
                ]
              ),
            
          ),
          Container(
                      margin: EdgeInsets.all(10),

              height:height,
              width: width,
                   alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.butnColor,
                   
                 ),
                 child: Text(text ,style: AppTextStyle.btnTStyle)
            ),
        ],
      ),
    );
  }
}