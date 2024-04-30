import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../view_model/fat_calc_cubit/fat_calc_cubit.dart';
import 'build_consumer_for_fat_male.dart';
import 'input_fat_calc.dart';

class ManFatCalcViewBody extends StatelessWidget {
  const ManFatCalcViewBody({super.key});

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
                AppImages.man,
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * .45,
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .19,
                left: MediaQuery.sizeOf(context).width * .2,
                child: InputFatBox(
                  controller: context.read<FatCalcCubit>().maleMiddle,
                  hint: '  ${S.of(context).middle}(${S.of(context).cm})',
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .07,
                right: MediaQuery.sizeOf(context).width * .18,
                child: InputFatBox(
                  controller: context.read<FatCalcCubit>().maleNeck,
                  hint: '  ${S.of(context).neck}(${S.of(context).cm})',
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .38,
                left: MediaQuery.sizeOf(context).width * .12,
                child: InputFatBox(
                  controller: context.read<FatCalcCubit>().maleHeight,
                  hint: '  ${S.of(context).tall}(${S.of(context).cm})',
                ),
              ),
              Positioned(
                top: MediaQuery.sizeOf(context).height * .37,
                right: MediaQuery.sizeOf(context).width * .14,
                child: InputFatBox(
                  controller: context.read<FatCalcCubit>().maleWeight,
                  hint: '  ${S.of(context).weight}(${S.of(context).kilo})',
                ),
              ),
            ],
          ),
          const BuildConsumerForFatMale()
        ],
      ),
    );
  }
}
