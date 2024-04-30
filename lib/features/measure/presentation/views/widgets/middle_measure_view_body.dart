import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';
import '../lower_back_measure_view.dart';
import 'custom_sub_titles.dart';
import 'video_banner.dart';

class MiddleMeasureViewBody extends StatelessWidget {
  const MiddleMeasureViewBody({super.key});

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
              S.of(context).title_measure_middle,
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
            Expanded(
              child: Text(
                'يتم أخذ أصغر للوسط',
                style: AppStyles.textStyle13M.copyWith(
                  color: const Color(0xff666666),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            AppButton(
              onPressed: () => PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const BelowBackMeasureView(),
              ),
              backgroundColor: AppColors.primarySwatchColor,
              text: Text(
                S.of(context).next,
                style: AppStyles.textStyle18SB.copyWith(color: Colors.white),
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
