import 'package:fetra/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/functions/locale.dart';

class RecipesDetailsViewBody extends StatelessWidget {
  const RecipesDetailsViewBody(
      {super.key, required this.components, required this.recipe});
  final String components;
  final String recipe;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
        children: [
          SizedBox(
            height: 36.h,
          ),
          Text(
            'المكوّنات:',
            style: AppStyles.textStyle15SB.copyWith(
              color: const Color(0xff303030),
            ),
            textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
          ),
          SizedBox(
            height: 34.h,
          ),
          Text(
            textAlign: TextAlign.right,
            components,
            style: AppStyles.textStyle13M.copyWith(
              color: const Color(0xff666666),
            ),
          ),
          SizedBox(
            height: 34.h,
          ),
          Text(
            'طريقة التحضير:',
            style: AppStyles.textStyle15SB.copyWith(
              color: const Color(0xff303030),
            ),
            textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
          ),
          SizedBox(
            height: 34.h,
          ),
          Text(
            textAlign: TextAlign.right,
            recipe,
            style: AppStyles.textStyle13M.copyWith(
              color: const Color(0xff666666),
            ),
          ),
        ],
      ),
    );
  }
}
