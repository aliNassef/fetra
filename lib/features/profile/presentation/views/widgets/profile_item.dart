import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.title, this.onTap,
  });
  final String title;
   final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.1,
        decoration: BoxDecoration(
          color: Colors.white,
          border: BorderDirectional(
            start: BorderSide(
              color: AppColors.primaryColor,
              width: 7,
            ),
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color(0x140B4A57),
              spreadRadius: 0,
              blurRadius: 12,
            )
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 18.w,
            ),
            Text(
              title,
              style: AppStyles.textStyle16SB.copyWith(
                color: const Color(0xff585858),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                isArabic() ? AppImages.arrowLeft : AppImages.arrowRight,
                colorFilter: const ColorFilter.mode(
                  Color(0xff0E5C6D),
                  BlendMode.srcIn,
                ),
              ),
            ),
            SizedBox(
              width: 8.w,
            ),
          ],
        ),
      ),
    );
  }
}
