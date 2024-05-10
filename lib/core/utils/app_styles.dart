import 'app_colors.dart';
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
  static final textStyle14SB = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
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
  static final textStyle11R = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
  );
  static final textStyle16SB = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
  );
  static final textStyle13M = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
  );
  static final textStyle14R = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: Colors.black,
  );
  static final textStyle18SB = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
    color: Colors.black,
  );
  static final textStyle18M = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: const Color(0xff4F4F4F),
  );
  static final textStyle12R = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: const Color(0xff2F315A),
  );
  static final textStyle20SB = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
  );

  static final textStyle15SB = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
  );

  static final textStyle10SB = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Cairo',
  );
  static final textStyle18R = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
  );
  static final textStyle9R = TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: const Color(0xff595959),
  );
  static final textStyle12M = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: const Color(0xff666666),
  );
  static final textStyle10M = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: Colors.white,
  );
  static final textStyle10R = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Cairo',
    color: const Color(0xff595959),
  );
  static final textStyle22M = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Cairo',
    color: const Color(0xff4F4F4F),
  );
}
