import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weight = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle font32BlueBold = TextStyle(
    color: const Color(0xFF247CFF),
    fontSize: 32.sp,
    // fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    // height: 0.05,
  );
  static TextStyle font13GrayRegular = TextStyle(
    color: const Color(0xFF757575),
    fontSize: 13.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    // height: 0.15,
  );
  static TextStyle font16WhiteSemiBold = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0.09,
  );
}
