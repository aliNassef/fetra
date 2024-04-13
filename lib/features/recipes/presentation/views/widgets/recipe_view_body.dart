import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_styles.dart';
 import '../../../../../localization/l10n.dart';
import 'recipes_grid_view.dart';

class RecipesViewBody extends StatelessWidget {
  const RecipesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 37.h,
            ),
            Text(
              S.of(context).recipes_title,
              style: AppStyles.textStyle15SB,
            ),
            SizedBox(
              height: 45.h,
            ),
            const RecipesGridView(),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
