import 'package:fetra/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/functions/locale.dart';

class RecipesDetailsViewBody extends StatelessWidget {
  const RecipesDetailsViewBody({super.key});

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
            '''حبة من كلٍّ من: الطماطم، والخيار، والفلفل الرومي الأخضر، والفلفل الرومي الأصفر، والفلفل الرومي الأحمر.
      ثلاث ملاعق طعام من زيت الزيتون.
      فلفل أسود. ملعقة صغيرة من الملح. 
      ملعقة صغيرة من الكمون
      ''',
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
            '''تقطيع الطماطم إلى جوانح وتقطيع كلّ من الخيار، والكرفس، والبصل الأخضر، والفلفل الرومي بأنواعه الثلاثة إلى شرائح. 
خلط عصير الليمون، وزيت السمسم، وزيت الزيتون، والفلفل، والملح، والكمون لنحصل على التتبيلة. 
خلط جميع الخضار مع أوراق السلطة الخضراء والفطر لنحصل على السلطة. 
خلط السلطة مع التتبيلة ثمّ وضعها في وعاء التقديم
      ''',
            style: AppStyles.textStyle13M.copyWith(
              color: const Color(0xff666666),
            ),
          ),
        ],
      ),
    );
  }
}
