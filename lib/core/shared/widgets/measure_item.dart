import '../../../features/measure/presentation/views/measure_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../utils/app_styles.dart';

class MeasureItem extends StatefulWidget {
  const MeasureItem({
    super.key,
  });

  @override
  State<MeasureItem> createState() => _MeasureItemState();
}

class _MeasureItemState extends State<MeasureItem> {
  bool hideMeasure = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PersistentNavBarNavigator.pushNewScreen(
          context,
          screen: const MeasureView(),
        );
      },
      child: hideMeasure
          ? Container(
              height: 24.h,
              width: double.infinity,
              color: Colors.white,
            )
          : Container(
              height: 24.h,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xffffe081),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        hideMeasure = true;
                      });
                    },
                    child: Icon(
                      Icons.close,
                      size: 20.r,
                      color: const Color(0xff585858),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'اذهب إلى الطريقة الصحيحة لأخذ القياسات',
                    style: AppStyles.textStyle12R.copyWith(
                      color: const Color(0xff585858),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
    );
  }
}
