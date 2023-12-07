import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vscare/core/themming/colors.dart';
import 'package:vscare/core/themming/font_weight_helper.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.black,
  );
  static TextStyle font32BlueBold = TextStyle(
    color: const Color(0xFF247CFF),
    fontSize: 32.sp,
    // fontFamily: 'Inter',
    fontWeight: FontWeightHelper.bold,
    // height: 0.05,
  );
  static TextStyle font13GrayRegular = TextStyle(
    color: const Color(0xFF757575),
    fontSize: 13.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.regular,
    // height: 0.15,
  );
  static TextStyle font14GrayRegular = TextStyle(
    color: const Color(0xFF757575),
    fontSize: 14.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.regular,
    // height: 0.15,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    height: 0.09,
  );
  static TextStyle font24BlueBold = TextStyle(
    color: ColorsManager.primarycolor,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font14LightGrayRegular = TextStyle(
    color: ColorsManager.lightGray,
    fontSize: 14.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.regular,
    // height: 0.15,
  );
  static TextStyle font14DarkBlueMeduim = TextStyle(
    color: ColorsManager.darkBlue,
    fontSize: 14.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.medium,
    // height: 0.15,
  );
  static TextStyle font13BlueRegular = TextStyle(
    color: Colors.blue,
    fontSize: 13.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.regular,
    // height: 0.15,
  );
  static TextStyle font13BlueSemiBold = TextStyle(
    color: Colors.blue,
    fontSize: 13.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.semiBold,
    // height: 0.15,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    color: const Color(0xff247CFF),
    fontSize: 13.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeightHelper.regular,
    // height: 0.15,
  );
  static TextStyle font11BrownRegular = const TextStyle(
    color: Color(0xFF9E9E9E),
    fontSize: 11,
    fontWeight: FontWeight.w400,
  );
  static TextStyle font11BlackMeduim = const TextStyle(
    color: Color(0xFF242424),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
