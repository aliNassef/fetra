 import 'package:fetra/core/utils/app_images.dart';
import 'package:fetra/features/fat_calc/presentation/view_model/fat_calc_cubit/fat_calc_cubit.dart';
import 'package:fetra/features/fat_calc/presentation/views/widgets/build_consumer_for_fat_female.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';
import 'input_fat_calc.dart';

class FemaleFatCalcViewBody extends StatelessWidget {
  const FemaleFatCalcViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                AppImages.woman,
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * .45,
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .17,
                left: MediaQuery.sizeOf(context).width * .2,
                child: InputFatBox(
                  controller: context.read<FatCalcCubit>().femaleMiddle,
                  hint: '  ${S.of(context).middle}(${S.of(context).cm})',
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .07,
                right: MediaQuery.sizeOf(context).width * .18,
                child: InputFatBox(
                  controller: context.read<FatCalcCubit>().femaleNeck,
                  hint: '  ${S.of(context).neck}(${S.of(context).cm})',
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .38,
                left: MediaQuery.sizeOf(context).width * .12,
                child: InputFatBox(
                  controller: context.read<FatCalcCubit>().femaleHeight,
                  hint: '  ${S.of(context).tall}(${S.of(context).cm})',
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .37,
                right: MediaQuery.sizeOf(context).width * .14,
                child: InputFatBox(
                  controller: context.read<FatCalcCubit>().femaleWeight,
                  hint: '  ${S.of(context).weight}(${S.of(context).kilo})',
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .22,
                right: MediaQuery.sizeOf(context).width * .22,
                child: InputFatBox(
                  controller: context.read<FatCalcCubit>().femaleLib,
                  hint: '  ${S.of(context).below_back}(${S.of(context).cm})',
                ),
              ),
            ],
          ),
          const BuildConsumerForFatFemale()
        ],
      ),
    );
  }
}
