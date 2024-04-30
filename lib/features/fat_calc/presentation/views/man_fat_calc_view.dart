import 'package:fetra/core/api/service_locator.dart';
import 'package:fetra/features/fat_calc/data/repo/fat_calc_repo_impl.dart';
import 'package:fetra/features/fat_calc/presentation/view_model/fat_calc_cubit/fat_calc_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../core/shared/widgets/measure_item.dart';
import '../../../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/man_fat_calc_view_body.dart';

class ManFatCalcView extends StatelessWidget {
  const ManFatCalcView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        appBarHeight: 75.h,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: MeasureItem(),
        ),
        title: S.of(context).fat_calc,
      ),
      body: BlocProvider(
        create: (context) => FatCalcCubit(getIt.get<FatCalcRepoImpl>()),
        child: const ManFatCalcViewBody(),
      ),
    );
  }
}
