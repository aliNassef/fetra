import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomOrRow extends StatelessWidget {
  const CustomOrRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 1.h,
          width: MediaQuery.of(context).size.width * .3,
          decoration: const BoxDecoration(
            color: AppColors.drawerColor,
          ),
        ),
        Text(
          'أو',
          style: AppStyles.choiceSignOrText.copyWith(
            color: Colors.black,
          ),
        ),
        Container(
          height: 1.h,
          width: MediaQuery.of(context).size.width * .3,
          decoration: const BoxDecoration(
            color: AppColors.drawerColor,
          ),
        ),
      ],
    );
  }
}
