import 'package:fetra/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static final onBoardingTitle = TextStyle(
    fontFamily: 'Cairo',
    color: Colors.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
  );
  static final onBoardingButton = TextStyle(
    fontFamily: 'Cairo',
    color: Colors.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static final choiceSignOrText = GoogleFonts.inter(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
  static final searchText = TextStyle(
    fontFamily: 'Cairo',
    color: AppColors.gray4,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static final choiceSignText = GoogleFonts.inter(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static final titleAuth = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
  );
  static final authText = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static final forgetPassStyle = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: AppColors.primaryColor,
  );

  static final textStyle16R = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static final textStyle14R = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: Colors.black,
  );
}
