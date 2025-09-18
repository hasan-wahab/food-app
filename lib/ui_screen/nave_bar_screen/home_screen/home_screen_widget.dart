import 'package:flutter/material.dart';
import 'package:food_app/commons/app_style/app_colors.dart';
import 'package:food_app/commons/app_style/app_sizes.dart';
import 'package:food_app/commons/app_style/app_text_style.dart';
import 'package:food_app/commons/widgets/app_button.dart';
import 'package:food_app/commons/widgets/app_t_field.dart';
import 'package:food_app/data_model/category_model.dart';

Widget textFieldRow() {
  return Row(
    spacing: AppSizes.columnSpacing(spacing: 10),
    children: [
      Expanded(
        flex: 10,
        child: AppTField(
          hintText: 'Search',
          lableText: 'Search',
          icon: Icon(Icons.search),
        ),
      ),
      Expanded(
        flex: 2,
        child: AppElevatedBtn(
          height: 56,
          icon: Icon(Icons.tune, color: AppColors.iconWhiteColor),
        ),
      ),
    ],
  );
}

Widget categoryRow({required List<CategoryModel> assetImage}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      spacing: AppSizes.columnSpacing(),
      children: List.generate((assetImage.length), (index) {
        return Column(
          spacing: AppSizes.columnSpacing(spacing: 5),
          children: [
            Container(
              alignment: Alignment.center,
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: AppColors.primaryGreyColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(assetImage[index].imagePath),
                        fit: BoxFit.cover,
                      ),

                      borderRadius: BorderRadius.circular(45 / 2),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 65,
              child: Text(
                maxLines: 1,
                textAlign: TextAlign.center,
                assetImage[index].name,
                style: AppTextStyle.secondTStyle.copyWith(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        );
      }),
    ),
  );
}

Widget cardSlider(context) {
  return SizedBox(
    height: 200,
    width: AppSizes.screenWidth(context),
    child: PageView(
      controller: PageController(),
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          height: 200,
          width: AppSizes.screenWidth(context),
          decoration: BoxDecoration(color: Colors.amber),
          child: Text('1'),
        ),
        Container(
          height: 200,
          width: AppSizes.screenWidth(context),
          decoration: BoxDecoration(color: Colors.teal),
          child: Text('2'),
        ),
        Container(
          height: 200,
          width: AppSizes.screenWidth(context),
          decoration: BoxDecoration(color: Colors.green),
          child: Text('3'),
        ),
      ],
    ),
  );
}
