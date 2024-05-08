import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/shared/widgets/custom_text_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import 'custom_profile_item_app_bar.dart';
import '../../../../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SleepingViewBody extends StatelessWidget {
  const SleepingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            children: [
              SizedBox(
                height: 35.h,
              ),
              CustomProfileItemAppBar(
                title: S.of(context).sleep_time,
              ),
              SizedBox(
                height: 40.h,
              ),
              CustomTextFormField(
                borderColor: AppColors.primarySwatchColor,
                borderRadius: 10,
                fillColor: true,
                hintStyle: AppStyles.textStyle10R,
                input: TextEditingController(),
                hint: 'من',
                backgroundColor: const Color(0xffF1F1F1).withOpacity(0.7),
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomTextFormField(
                borderColor: AppColors.primarySwatchColor,
                borderRadius: 10,
                fillColor: true,
                hintStyle: AppStyles.textStyle10R,
                input: TextEditingController(),
                hint: 'إلى',
                backgroundColor: const Color(0xffF1F1F1).withOpacity(0.7),
              ),
              SizedBox(
                height: 30.h,
              ),
              AppButton(
                margin: EdgeInsets.zero,
                text: Text(
                  S.of(context).calc,
                  style: AppStyles.textStyle18SB.copyWith(
                    color: Colors.white,
                  ),
                ),
                backgroundColor: AppColors.primarySwatchColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
