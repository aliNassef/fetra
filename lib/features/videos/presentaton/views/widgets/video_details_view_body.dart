import '../../../../../core/shared/functions/locale.dart';
import '../../../../measure/presentation/views/widgets/custom_sub_titles.dart';
import '../../../../measure/presentation/views/widgets/video_banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import 'profile_hint.dart';
import 'viddeo_details_item.dart';

class VideoDetailsViewBody extends StatelessWidget {
  const VideoDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 30.h),
              child: const VideoBanner(),
            ),
            Text(
              'هل الاكل الصحي مفيد؟ ولماذا؟',
              style: AppStyles.textStyle20SB.copyWith(
                color: const Color(0xff303030),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomSubTitles(),
            SizedBox(
              height: 22.h,
            ),
            Text(
              'اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا الآن',
              style: AppStyles.textStyle14R.copyWith(
                color: const Color(0xff9D9FA0),
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            const ProfileHint(),
            SizedBox(
              height: 17.h,
            ),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return const VideoDetailsItem();
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h);
                },
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
