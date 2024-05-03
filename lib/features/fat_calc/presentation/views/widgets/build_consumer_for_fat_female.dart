
import '../../../../../core/shared/functions/toast_dialog.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../view_model/fat_calc_cubit/fat_calc_cubit.dart';
import 'fat_calc_info.dart';
import '../../../../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class BuildConsumerForFatFemale extends StatelessWidget {
  const BuildConsumerForFatFemale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FatCalcCubit, FatCalcState>(
      listener: (context, state) {
        if (state is FailureCalculating) {
          showToast(text: state.errMessage);
        }
      },
      builder: (context, state) {
        if (state is SuccessCalculating) {
          return Column(
            children: [
              SizedBox(
                height: 48.h,
              ),
              SizedBox(
                width: 143.w,
                child: AppButton(
                  onPressed: () {
                    context.read<FatCalcCubit>().fatCalcFemale();
                  },
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
                    FatCalcInfo(
                      text: 'نسبة الدهون',
                      val: '${state.instance.data!.bodyFat}',
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    FatCalcInfo(
                      text: 'وزن الدهون',
                      val:
                          '${state.instance.data!.fatMass} ${S.of(context).cm}',
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    FatCalcInfo(
                      text: 'وزن الكتلة اللادهنية',
                      val: '${state.instance.data!.leanMass} ${S.of(context).cm}',
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    FatCalcInfo(
                      text: 'فئة الدهون',
                      val: '${state.instance.data!.fatCategory}',
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
          );
        } else {
          return Column(
            children: [
              SizedBox(
                height: 48.h,
              ),
              SizedBox(
                width: 143.w,
                child: AppButton(
                  onPressed: () {
                    context.read<FatCalcCubit>().fatCalcFemale();
                  },
                  radius: 20.r,
                  backgroundColor: AppColors.primarySwatchColor,
                  text: state is LoadingCalculating
                      ? Center(
                          child: SpinKitFadingCircle(
                            size: 30,
                            itemBuilder:
                                (BuildContext context, int index) {
                              return const DecoratedBox(
                                decoration:
                                    BoxDecoration(color: Colors.white),
                              );
                            },
                          ),
                        )
                      : Text(
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
          );
        }
      },
    );
  }
}
