import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/core/shared/widgets/skelton.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared/functions/locale.dart';

class LoadingMeasureView extends StatelessWidget {
  const LoadingMeasureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(title: S.of(context).measure),
        body: const LoadingMeasureViewBody());
  }
}

class LoadingMeasureViewBody extends StatelessWidget {
  const LoadingMeasureViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Directionality(
        textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 43.h,
            ),
            Skelton(
              height: MediaQuery.sizeOf(context).height * .2,
              width: MediaQuery.sizeOf(context).width,
            ),
            SizedBox(
              height: 30.h,
            ),
            Skelton(height: 28.h, width: MediaQuery.sizeOf(context).width * .8),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Skelton(
                  width: 60.w,
                  height: 25.h,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Skelton(
                  width: 60.w,
                  height: 25.h,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Skelton(
                  width: 60.w,
                  height: 25.h,
                ),
                SizedBox(
                  width: 2.w,
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Skelton(height: 20.h, width: MediaQuery.sizeOf(context).width * .9),
            SizedBox(
              height: 15.h,
            ),
            Skelton(height: 20.h, width: MediaQuery.sizeOf(context).width * .9),
            SizedBox(
              height: 24.h,
            ),
            Skelton(height: 21.h, width: MediaQuery.sizeOf(context).width * .8),
            SizedBox(
              height: 15.h,
            ),
            Skelton(height: 20.h, width: MediaQuery.sizeOf(context).width * .9),
            SizedBox(
              height: 15.h,
            ),
            Skelton(height: 20.h, width: MediaQuery.sizeOf(context).width * .9),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
    );
  }
}
