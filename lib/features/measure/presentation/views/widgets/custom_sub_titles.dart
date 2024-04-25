
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';

class CustomSubTitles extends StatelessWidget {
  const CustomSubTitles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40.w,
          height: 25.h,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color(0xff8D5EF2),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Text(
            S.of(context).health,
            style: AppStyles.textStyle10M,
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
          width: 40.w,
          height: 25.h,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color(0xff4DC9D1),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Text(
            S.of(context).sport,
            style: AppStyles.textStyle10M,
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
          width: 40.w,
          height: 25.h,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color(0xff0082CD),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Text(
            S.of(context).thickness,
            style: AppStyles.textStyle10M,
          ),
        ),
        SizedBox(
          width: 2.w,
        ),
      ],
    );
  }
}
