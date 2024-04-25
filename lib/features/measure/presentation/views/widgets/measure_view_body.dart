import 'package:fetra/features/measure/presentation/views/neck_measure_view.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../lower_back_measure_view.dart';
import 'measure_box_info.dart';

class MeasureViewBody extends StatelessWidget {
  const MeasureViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MeasureBoxInfo(
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const NeckMeasureView(),
              );
            },
            text: S.of(context).neck,
            backgroundColor: const Color(0xffF7A593).withOpacity(0.25),
          ),
          SizedBox(
            height: 31.h,
          ),
          MeasureBoxInfo(
            onTap: () {},
            text: S.of(context).middle,
            backgroundColor: const Color(0xffF8A44C).withOpacity(0.1),
          ),
          SizedBox(
            height: 31.h,
          ),
          MeasureBoxInfo(
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const BelowBackMeasureView(),
              );
            },
            text: S.of(context).below_back,
            backgroundColor: const Color(0xff53B175).withOpacity(0.1),
          ),
        ],
      ),
    );
  }
}
