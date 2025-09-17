import 'package:flutter/material.dart';
import 'package:food_app/commons/app_style/app_colors.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leadingWidget;
  final VoidCallback? leadingOnTap;
  final Widget? actionWidget;
  final Widget? title;
  const AppBarWidget({
    super.key,
    this.leadingWidget,
    this.actionWidget,
    this.title,
    this.leadingOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: AppSizes.bodyPadding(vertical: 0),
        child: Stack(
          children: [
            leadingWidget != null
                ? InkWell(
                    onTap: leadingOnTap,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: AppColors.primaryGreyColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: leadingWidget,
                      ),
                    ),
                  )
                : Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(height: 50, width: 50),
                  ),

            // Title Widget
            title != null
                ? Align(alignment: Alignment.center, child: title)
                : Align(
                    alignment: Alignment.center,
                    child: SizedBox(height: 50, width: 50),
                  ),
            // Action Widget
            actionWidget != null
                ? Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primaryGreyColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: actionWidget,
                    ),
                  )
                : Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(height: 50, width: 50),
                  ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(66);
}
