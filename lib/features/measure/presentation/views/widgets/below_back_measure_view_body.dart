import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';
import 'custom_sub_titles.dart';
import 'video_banner.dart';

class LowerBackMeasureViewBody extends StatelessWidget {
  const LowerBackMeasureViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Directionality(
        textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 43.h,
            ),
            const VideoBanner(),
            SizedBox(
              height: 30.h,
            ),
            Text(
              S.of(context).title_measure_below_back,
              style: AppStyles.textStyle20SB.copyWith(
                color: const Color(0xFF303030),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomSubTitles(),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا الآن',
              maxLines: 3,
              style: AppStyles.textStyle14R.copyWith(
                color: const Color(0xff9D9FA0),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'الطريقة الصحيحة لأخذ القياسات :',
              maxLines: 3,
              style: AppStyles.textStyle20SB.copyWith(
                color: const Color(0xFF303030),
                fontSize: 15.sp,
                height: 0.07,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              maxLines: 6,
              'يتم أاذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا الآناذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا الآناذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا الآناذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا الآناذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا الآناذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا اذا كنت مهتم بالحصول على نظامك الصحي الآن, فقط انضم الينا الآنخذ أصغر للوسط',
              style: AppStyles.textStyle13M.copyWith(
                color: const Color(0xff666666),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
