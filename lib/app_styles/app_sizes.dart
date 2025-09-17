import 'package:flutter/widgets.dart';

class AppSizes {

 // PRIVATE CONSTRUCTOR
  AppSizes._();
  //SCREEN WIDTH
 static screenWidth(BuildContext context){
  MediaQuery.sizeOf(context).width;
 } 
   //SCREEN HEIGHT
 static screenHeight(BuildContext context){
  MediaQuery.sizeOf(context).height;
 } 

}