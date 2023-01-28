import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Applayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double X = getScreenHeight() / pixels; //844/200=>4.22
    return getScreenHeight() / X;
  }

  static getWidth(double pixels) {
    double X = getScreenWidth() / pixels;
    return getScreenWidth() / X;
  }
}
