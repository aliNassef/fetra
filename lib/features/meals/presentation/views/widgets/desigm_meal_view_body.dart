import 'package:fetra/core/shared/functions/locale.dart';
import 'package:fetra/core/shared/widgets/app_button.dart';
import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'meal_item.dart';

class DesignMealViewBody extends StatelessWidget {
  const DesignMealViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 38.h,
            ),
            Text(
              '${S.of(context).number_meals} : 3',
              style: AppStyles.textStyle15SB.copyWith(
                color: const Color(0xff303030),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'بروتين الوجبة التانية:',
              style: AppStyles.textStyle13M.copyWith(
                color: const Color(0xff666666),
              ),
            ),
            SizedBox(
              height: 19.h,
            ),
            const MealItem(),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    margin: EdgeInsets.zero,
                    radius: 10,
                    backgroundColor: AppColors.primarySwatchColor,
                    text: Text(
                      S.of(context).next,
                      style: AppStyles.textStyle10SB.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Expanded(
                  child: AppButton(
                    margin: EdgeInsets.zero,
                    radius: 10,
                    borderColor: AppColors.primarySwatchColor,
                    backgroundColor: Colors.white,
                    text: Text(
                      S.of(context).pervious,
                      style: AppStyles.textStyle10SB.copyWith(
                        color: const Color(0xff212132),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
