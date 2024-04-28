import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../female_fat_calc_view.dart';
import '../man_fat_calc_view.dart';
 import 'package:flutter/material.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../../../generated/l10n.dart';

class FatCalcViewBody extends StatelessWidget {
  const FatCalcViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          AppImages.fatCalculation,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height * .5,
        ),
        SizedBox(
          height: 23.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: AppButton(
                  onPressed: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const ManFatCalcView(),
                    );
                  },
                  backgroundColor: AppColors.primarySwatchColor,
                  text: Text(
                    S.of(context).male,
                    style: AppStyles.textStyle18R.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50.w,
              ),
              Expanded(
                child: AppButton(
                  onPressed: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const FemaleFatCalcView(),
                    );
                  },
                  backgroundColor: AppColors.primarySwatchColor,
                  text: Text(
                    S.of(context).female,
                    style: AppStyles.textStyle18R.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
