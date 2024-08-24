import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahson/customStyle/appcolors.dart';

import 'dimensions.dart';



final robotoMediumBold = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    fontSize: Dimensions.fontSizeLarge,
    color: Colors.black);
final robotoMediumWhiteBold = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    fontSize: Dimensions.fontSizeLarge,
    color:Colors.white);
final robotoMedium = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    fontSize: Dimensions.fontSizeLarge,
    color: Colors.black);

final robotoMediumWhite = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: Dimensions.fontSizeLarge,
    color:Colors.white);

final robotoMediumBlack = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
    fontSize: Dimensions.fontSizeLarge,
    color: Colors.black);

final robotoSmallWhite = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w200,
    fontSize: Dimensions.fontSizeDefault,
    color: Colors.white);
final robotoHugeWhite = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    fontSize: Dimensions.fontSizeExtraLarge,
    color:Colors.white);

final robotoBold = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  fontSize: Dimensions.fontSizeDefault,
);



final robotoHugeBlack = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    fontSize: Dimensions.fontSizeExtraLarge,
    color: Colors.black);

final robotodarkHuge = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
    fontSize: Dimensions.fontSizeExtraLarge,
    color: Colors.black);
final robotoExtraHuge = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  fontSize: 36, // Your desired font size here
  color:Colors.black,
);
final robotoExtraHugeBlack = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  fontSize: 36, // Your desired font size here
  color: Colors.black,
);
final robotoExtraHugeWhite = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w700,
  fontSize: 36, // Your desired font size here
  color: Colors.white,
);

final robotoBlack = TextStyle(
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w900,
  fontSize: Dimensions.fontSizeDefault,
  color: Colors.black,
);
final elevatedButStyle = ElevatedButton.styleFrom(
    fixedSize: const Size(90, 30),
    backgroundColor: Colors.blue,
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)));
final redElevatedButStyle = ElevatedButton.styleFrom(
    fixedSize: const Size(90, 30),
    backgroundColor: Colors.redAccent,
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)));
final backButton = IconButton(
    onPressed: () => Get.back(),
    icon: Icon(
      Icons.arrow_back_ios,
      color: AppColors.atoll,
    ));
