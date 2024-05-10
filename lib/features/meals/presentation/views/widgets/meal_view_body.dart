import 'package:fetra/core/shared/functions/locale.dart';
import 'package:fetra/core/shared/widgets/app_button.dart';
import 'package:fetra/core/shared/widgets/drop_down_button.dart';
import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:fetra/features/meals/presentation/views/design_meal_view.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MealViewBody extends StatelessWidget {
  const MealViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 27.h,
          ),
          CustomDropDown(
            title: S.of(context).number_meals,
            items: const [
              DropdownMenuItem(
                value: '2',
                child: Text('2'),
              ),
              DropdownMenuItem(
                value: '3',
                child: Text('3'),
              ),
            ],
          ),
          const Spacer(),
          AppButton(
            onPressed: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const DesignMealView(),
              );
            },
            radius: 10,
            text: Text(
              S.of(context).next,
              style: AppStyles.textStyle20SB.copyWith(
                color: Colors.white,
              ),
            ),
            backgroundColor: AppColors.primarySwatchColor,
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
