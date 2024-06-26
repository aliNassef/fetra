import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomSignWithGoogleButton extends StatelessWidget {
  const CustomSignWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        height: 38.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.gray4,
          ),
        ),
        child: Row(
          children: [
            const Spacer(
              flex: 1,
            ),
            SvgPicture.asset(
              AppImages.google,
            ),
            const Spacer(
              flex: 4,
            ),
            Text(
              'المتصفح الرسمي جوجل',
              style: AppStyles.choiceSignText,
            ),
            const Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
