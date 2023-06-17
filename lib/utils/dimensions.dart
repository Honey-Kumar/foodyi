import 'package:get/get.dart';

class Dimensions {
  static double screenheight = Get.context!.height;
  static double screenwidth = Get.context!.width;

  static double appinnercontainer = screenheight / 220;
  static double appoutercontainer = screenheight / 320;
  static double appoutersmallcontainer = screenheight / 90;
  static double innercontainer = screenheight / appinnercontainer; //3.84;
  static double outercontainer = screenheight / appoutercontainer;

  ///2.64;
  static double outersmallcontainer =
      screenheight / appoutersmallcontainer; // 7.03;

  static double appfont20 = screenheight / 12;
  static double font20 = screenheight / appfont20;

  // icons
  static double appicons = screenheight / 10;
  static double iconssize = screenheight / appicons;

  //height
  static double appheight10 = screenheight / 10;
  static double height10 = screenheight / appheight10;
  static double appheight20 = screenheight / 20;
  static double height20 = screenheight / appheight20;
  static double appwidth10 = screenheight / 10;
  static double width10 = screenheight / appwidth10;
  static double appwidth20 = screenheight / 20;
  static double width20 = screenheight / appwidth20;
  static double appwidth30 = screenheight / 30;
  static double width30 = screenheight / appwidth30;

//radius
  static double appradius10 = screenheight / 10;
  static double radius10 = screenheight / appradius10;
  static double appradius20 = screenheight / 20;
  static double radius20 = screenheight / appradius20;

  //container height width 120
  static double appwidth120 = screenheight / 120;
  static double width120 = screenheight / appwidth120;
  static double appheight120 = screenheight / 120;
  static double height120 = screenheight / appheight120;

  // height 900
  static double appheight1100 = screenheight / 1100;
  static double height1100 = screenheight / appheight1100;

  // stack widgest in popular food details
  static double appstackheight350 = screenheight / 300;
  static double stackheight350 = screenheight / appstackheight350;
  static double appsize40 = screenheight / 40;
  static double size40 = screenheight / appsize40;
  static double appiconsize16 = screenheight / 16;
  static double iconsize16 = screenheight / appiconsize16;
}
