// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vscare/core/themming/colors.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRaduis;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttomWidth;
  final double? buttomHeight;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const AppTextButton({
    Key? key,
    this.borderRaduis,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttomWidth,
    this.buttomHeight,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRaduis ?? 16.0),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? ColorsManager.primarycolor,
        ),
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: horizontalPadding ?? 12.0.w,
            vertical: verticalPadding ?? 14.h,
          ),
        ),
        fixedSize: MaterialStateProperty.all(
          Size(buttomWidth ?? double.maxFinite, buttomHeight ?? 50.h),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle,
      ),
    );
  }
}
