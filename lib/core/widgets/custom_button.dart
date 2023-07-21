import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.text,
      required this.backgroundColor,
      this.borderRadius,
      required this.textColor,
      this.fontsize,
      required this.click
      });
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontsize;
  final Function() click  ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 48.h,
        child: TextButton(
            onPressed: click ,
            style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12),
              ),
            ),
            child: Text(
              text,
              style: Styles.textStyle18
                  .copyWith(fontSize: fontsize, color: textColor),
            )));
  }
}
