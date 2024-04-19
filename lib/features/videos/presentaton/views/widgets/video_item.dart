
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_images.dart';

class VideoItem extends StatelessWidget {
  const VideoItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 133.49.h,
      width: 143.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AppImages.videoback,
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 124.h,
        width: 133.w,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.91),
          borderRadius: BorderRadius.circular(10),
        ),
        child: CircleAvatar(
          backgroundColor: const Color(0xff84C245),
          child: Center(
            child: SvgPicture.asset(
              AppImages.arrowRight,
            ),
          ),
        ),
      ),
    );
  }
}
