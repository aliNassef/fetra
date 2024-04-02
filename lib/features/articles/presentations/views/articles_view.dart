import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_images.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ArticclesView extends StatelessWidget {
  const ArticclesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: SvgPicture.asset(
                AppImages.arrowLeft,
                height: 24.h,
                width: 24.w,
              ),
            ),
          ),
          automaticallyImplyLeading: true,
          backgroundColor: AppColors.primaryColor[800],
          title: Text(
            S.of(context).articles,
            style: AppStyles.onBoardingTitle.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
