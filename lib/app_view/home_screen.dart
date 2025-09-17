import 'package:flutter/material.dart';
import 'package:food_app/app_images/network_image.dart';
import 'package:food_app/app_styles/app_sizes.dart';
import 'package:food_app/app_styles/app_text_style.dart';
import 'package:food_app/widgets/app_bar_widget.dart';
import 'package:food_app/widgets/app_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: AppBarWidget(
        leadingWidget: CircleAvatar(
          backgroundImage:NetworkImage(AppNetworkImages.avatar),
        ),
        title: Text('Helo',style: AppTextStyle.appBarTextStyle,),
        actionWidget: Icon(Icons.menu,),
      ),
      body: Container(
        height: AppSizes.screenHeight(context),
        width: AppSizes.screenWidth(context),
     
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('Heading line N1',style: AppTextStyle.firstTStyle,),
            Text('Heading line N2',style: AppTextStyle.secondTStyle,),
            AppElevatedBtn(
              text: 'Elevated', 
            onTap: () { 
              print('This is a Elevated button');
             },),
                 AppElevatedBtn(
                  height: 45,
                  width: 200,
                  isCircle: true,
                  text: 'Circle',
                  onTap: () { 
              print('This is a Circle button');
             },),
            ],
          ),
        ),
      ),
    );
  }
}
