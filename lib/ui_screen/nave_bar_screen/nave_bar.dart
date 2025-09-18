import 'package:flutter/material.dart';
import 'package:food_app/commons/app_style/app_colors.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/ui_screen/nave_bar_screen/cart_screen.dart';
import 'package:food_app/ui_screen/nave_bar_screen/favorite_screen.dart';
import 'package:food_app/ui_screen/nave_bar_screen/home_screen/home_screen.dart';
import 'package:food_app/ui_screen/nave_bar_screen/profile_screen.dart';

class NaveBar extends StatefulWidget {
  const NaveBar({super.key});

  @override
  State<NaveBar> createState() => _NaveBarState();
}

class _NaveBarState extends State<NaveBar> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    FavoriteScreen(),
    CartScreen(),
    ProfileScreen(),
  ];
  List<IconData> icons = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens.elementAt(currentIndex)),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: AppSizes.bodyPadding(vertical: 0),
          height: 70,
          width: AppSizes.screenWidth(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (index) {
              return Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: currentIndex == index ? AppColors.butnColor : null,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  color: currentIndex == index
                      ? AppColors.iconWhiteColor
                      : null,
                  icon: Icon(
                    icons[index],
                    color: currentIndex == index
                        ? AppColors.iconWhiteColor
                        : null,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
