
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';

class CustomArticleAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomArticleAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(60.h),
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
        leadingWidth: 50.w,
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
