import 'package:get/get.dart';

class Dimensions {
  // calc the sizes here
  static double screenHeight = Get.context!.height;
  static double screeWidth = Get.context!.width;

  // start page
  static double startPageImgHeight = screenHeight / 9.43;
  static double startPageImgWidth = screenHeight / 9.43;
  static double textContainerWidth = screenHeight / 4.07;
  static double textContainerHeight = screenHeight / 32;
  static double buttonContainerWidth = screenHeight / 2.53;
  static double buttonContainerHeight = screenHeight / 17.92;

  // introScreen
  static double introScreenSlider = screenHeight / 1.33;
  static double introScreenImageHeight = screenHeight / 2.74;
  static double introScreenImageWidth = screenHeight / 2.74;

  // loginScreen
  static double logoWidth = screenHeight / 5.36;
  static double logoHeight = screenHeight / 17.92;

  // start page height
  static double height110 = screenHeight / 8.22;

  //dynamic height padding and margin
  static double heigth10 = screenHeight / 84.4;
  static double heigth15 = screenHeight / 56.27;
  static double heigth20 = screenHeight / 42.2;
  static double heigth30 = screenHeight / 28.13;
  static double heigth45 = screenHeight / 18.76;
  // dynamic width padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28.13;
  static double width45 = screenHeight / 18.76;
  //font size
  static double font16 = screenHeight / 52.75;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.46;
  // radius
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  //Icon size
  static double iconSize24 = screenHeight / 35.17;
  static double iconSize16 = screenHeight / 52.75;

  // list view size
  static double listViewImgSize = screenHeight / 6.9;
  static double listViewTextContSize = screenHeight / 8.28;

  //popular food
  static double popularFoodImgSize = screenHeight / 2.41;

  //bottom height
  static double bottomHeightBar = screenHeight / 7.03;
}
