import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  //static double blockSizeHorizontal;
  //static double blockSizeVertical;

  // Pixel 3a dimensions
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    //blockSizeHorizontal = screenWidth / 111;
    //blockSizeVertical = screenHeight / 100;
  }
}

//double widthOf(double width) => SizeConfig.blockSizeHorizontal * width;
//double heightOf(double height) => SizeConfig.blockSizeVertical * height;
