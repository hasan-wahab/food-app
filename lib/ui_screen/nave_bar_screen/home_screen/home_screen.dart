import 'package:flutter/material.dart';
import 'package:food_app/commons/app_images/assets_image.dart';
import 'package:food_app/commons/app_images/network_image.dart';

import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';
import 'package:food_app/commons/widgets/app_bar_widget.dart';
import 'package:food_app/data_model/category_model.dart';

import 'package:food_app/ui_screen/nave_bar_screen/home_screen/home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> catagoryImage = [
    CategoryModel(name: 'Barger', imagePath: AppAssetsImages.burger),
    CategoryModel(name: 'Asian food', imagePath: AppAssetsImages.asianFood),
    CategoryModel(name: 'Chinese food', imagePath: AppAssetsImages.chineseFood),
    CategoryModel(name: 'Soft Drink', imagePath: AppAssetsImages.softDrink),
    CategoryModel(name: 'Deserts', imagePath: AppAssetsImages.deserts),
    CategoryModel(name: 'Soft Food', imagePath: AppAssetsImages.softFood),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Row(
          spacing: AppSizes.columnSpacing(spacing: 5),
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.location_on),
            Text('Canada', style: AppTextStyle.appBarTextStyle),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        leadingProfileImage: AppNetworkImages.avatar,
        leadingOnTap: () {},
        actionWidget: Icon(Icons.menu),
      ),
      body: ListView(
        padding: AppSizes.bodyPadding(),
        children: [
          AppSizes.screenGap(),
          // Headding
          Text('Ready to order your', style: AppTextStyle.firstTStyle),
          AppSizes.screenGap(),
          // Text Field And Filter Button
          textFieldRow(),
          AppSizes.screenGap(),
          // Catagory Row
          categoryRow(assetImage: catagoryImage),
          // Card
          cardSlider(context),
        ],
      ),
    );
  }
}
