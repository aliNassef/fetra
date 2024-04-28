import '../../../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../core/shared/widgets/measure_item.dart';
import 'widgets/female_fat_calc_view_body.dart';

class FemaleFatCalcView extends StatelessWidget {
  const FemaleFatCalcView({super.key});

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
      body: const FemaleFatCalcViewBody(),
    );
  }
}
