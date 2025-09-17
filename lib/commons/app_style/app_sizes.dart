import 'package:flutter/widgets.dart';

class AppSizes {
  // PRIVATE CONSTRUCTOR
  AppSizes._();
  //SCREEN WIDTH
  static screenWidth(
    BuildContext context, {
    double? dividion,
    double? multiply,
    double? add,
    double? sub,
  }) {
    if (dividion != null) {
      return MediaQuery.sizeOf(context).width / dividion;
    } else if (multiply != null) {
      return MediaQuery.sizeOf(context).width * multiply;
    } else if (add != null) {
      return MediaQuery.sizeOf(context).width + add;
    } else if (sub != null) {
      return MediaQuery.sizeOf(context).width - sub;
    } else {
      return MediaQuery.sizeOf(context).width;
    }
  }

  //SCREEN HEIGHT
  static screenHeight(
    BuildContext context, {
    double? dividion,
    double? multiply,
    double? add,
    double? sub,
  }) {
    if (dividion != null) {
      return MediaQuery.sizeOf(context).height / dividion;
    } else if (multiply != null) {
      return MediaQuery.sizeOf(context).height * multiply;
    } else if (add != null) {
      return MediaQuery.sizeOf(context).height + add;
    } else if (sub != null) {
      return MediaQuery.sizeOf(context).height - sub;
    } else {
      return MediaQuery.sizeOf(context).height;
    }
  }

  // Screen padding

  static EdgeInsetsGeometry bodyPadding({
    double horizantal = 12,
    double vertical = 12,
  }) {
    return EdgeInsets.symmetric(horizontal: horizantal, vertical: vertical);
  }

  // Screen spacing

  static screenGap({double height = 20, double width = 20}) {
    return SizedBox(height: height, width: width);
  }

  static columnSpacing({double spacing = 20}) {
    return spacing;
  }

  // App Border Radius
  static double borderRadius(){
    return 12.0;
  }
}
