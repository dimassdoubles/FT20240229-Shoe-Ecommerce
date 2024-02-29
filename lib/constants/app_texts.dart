import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTexts {
  AppTexts._();
  static final baseText = GoogleFonts.palanquinDark();

  static TextStyle text1({Color? color}) => baseText.copyWith(
        fontSize: 8.sp,
        color: color,
      );
  static TextStyle text2({Color? color}) => baseText.copyWith(
        fontSize: 11.sp,
        color: color,
      );
  static TextStyle text3({Color? color}) => baseText.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle text4({Color? color}) => baseText.copyWith(
        fontSize: 15.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle text5({Color? color}) => baseText.copyWith(
        fontSize: 16.sp,
        color: color,
      );
  static TextStyle text6({Color? color}) => baseText.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle text7({Color? color}) => baseText.copyWith(
        fontSize: 26.sp,
        fontWeight: FontWeight.w600,
        color: color,
      );
}
