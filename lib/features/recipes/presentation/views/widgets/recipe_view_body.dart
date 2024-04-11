import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';

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
            

          ],
        ),
      ),
    );
  }
}
/*
  i =  0 - 5
  0 1 2 3 4 5
  6 7 8 9 10 11
  12 13 14 15 16 17
  if index % {6 , 7 , 8 , 9 , 10 , 11} == {0 , 1 , 2 , 3 , 4 , 5}
  


 */