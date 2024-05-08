import 'package:fetra/features/profile/presentation/view_model/sleeping_cubit/sleeping_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
          child: BlocConsumer<SleepingCubit, SleepingState>(
            listener: (context, state) {
              if (state is SleepingSuccess) {}
            },
            builder: (context, state) {
              return Column(
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
                    input: context.read<SleepingCubit>().from,
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
                    input: context.read<SleepingCubit>().to,
                    hint: 'إلى',
                    backgroundColor: const Color(0xffF1F1F1).withOpacity(0.7),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  AppButton(
                    onPressed: () {
                      context.read<SleepingCubit>().sleepTest(
                            from: context.read<SleepingCubit>().from.text,
                            to: context.read<SleepingCubit>().to.text,
                          );
                    },
                    margin: EdgeInsets.zero,
                    text: state is SleepingLoading
                        ? Center(
                            child: SpinKitFadingCircle(
                              itemBuilder: (BuildContext context, int index) {
                                return const DecoratedBox(
                                  decoration:
                                      BoxDecoration(color: Color(0xffC4C4C4)),
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
                    backgroundColor: AppColors.primarySwatchColor,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
