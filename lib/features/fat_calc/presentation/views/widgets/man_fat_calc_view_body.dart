import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'fat_calc_info.dart';
import 'input_fat_calc.dart';

class ManFatCalcViewBody extends StatelessWidget {
  const ManFatCalcViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          //const MeasureItem(),
          SizedBox(
            height: 24.h,
          ),
          Stack(
            children: [
              Image.asset(
                AppImages.man,
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * .45,
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .19,
                left: MediaQuery.sizeOf(context).width * .2,
                child: InputFatBox(
                  controller: controller,
                  hint: '  ${S.of(context).middle}(${S.of(context).cm})',
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .07,
                right: MediaQuery.sizeOf(context).width * .18,
                child: InputFatBox(
                  controller: controller,
                  hint: '  ${S.of(context).neck}(${S.of(context).cm})',
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .38,
                left: MediaQuery.sizeOf(context).width * .12,
                child: InputFatBox(
                  controller: controller,
                  hint: '  ${S.of(context).tall}(${S.of(context).cm})',
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .37,
                right: MediaQuery.sizeOf(context).width * .14,
                child: InputFatBox(
                  controller: controller,
                  hint: '  ${S.of(context).weight}(${S.of(context).cm})',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 48.h,
          ),
          SizedBox(
            width: 143.w,
            child: AppButton(
              radius: 20.r,
              backgroundColor: AppColors.primarySwatchColor,
              text: Text(
                S.of(context).calc,
                style: AppStyles.textStyle18SB.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Column(
              children: [
                const FatCalcInfo(
                  text: 'نسبة الدهون',
                  val: '% 0',
                ),
                SizedBox(
                  height: 9.h,
                ),
                const FatCalcInfo(
                  text: 'وزن الدهون',
                  val: '0 كجم',
                ),
                SizedBox(
                  height: 9.h,
                ),
                const FatCalcInfo(
                  text: 'وزن الكتلة اللادهنية',
                  val: '0 كجم',
                ),
                SizedBox(
                  height: 9.h,
                ),
                const FatCalcInfo(
                  text: 'فئة الدهون',
                  val: '0 كجم',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          AppButton(
            radius: 10.r,
            backgroundColor: AppColors.primarySwatchColor,
            text: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Text(
                'صمم نظامك الصحي',
                style: AppStyles.textStyle18SB.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
