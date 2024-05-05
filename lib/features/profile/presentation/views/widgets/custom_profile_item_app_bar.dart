import 'package:fetra/core/utils/app_images.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomProfileItemAppBar extends StatelessWidget {
  const CustomProfileItemAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyles.textStyle18SB.copyWith(
              color: const Color(0xff212132),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              AppImages.arrowLeft,
              colorFilter: const ColorFilter.mode(
                Color(0xff303030),
                BlendMode.srcIn,
              ),
              height: MediaQuery.sizeOf(context).height * .04,
            ),
          ),
        ],
      ),
    );
  }
}
