import 'package:bookly/core/constant/app_constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static var textStyle18 =
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600);
  static var textStyle20 = TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
      fontFamily: AppConstance.kassetsFontFamily);
  static var textStyle30 = TextStyle(
      fontSize: 30.sp,
      fontWeight: FontWeight.normal,
      fontFamily: AppConstance.kassetsFontFamily);
  static var textStyle14 =
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.normal);
  static var textStyle16 =
      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500);
}
