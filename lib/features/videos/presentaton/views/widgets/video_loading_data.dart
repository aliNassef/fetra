
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/shared/widgets/skelton.dart';

class VideoLoadingData extends StatelessWidget {
  const VideoLoadingData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 21.h,
        ),
        SizedBox(
          height: 50.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Skelton(
                  height: 50.h,
                  width: 100.w,
                  radius: 10.r,
                ),
              );
            },
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Expanded(
          child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 21.h,
              crossAxisSpacing: 35.w,
            ),
            itemBuilder: ((context, index) {
              return Directionality(
                textDirection:
                    isArabic() ? TextDirection.rtl : TextDirection.ltr,
                child: Column(
                  children: [
                    Skelton(
                      height: 133.49.h,
                      width: 143.w,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Skelton(
                      height: 22.h,
                      width: 100.w,
                      radius: 5,
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
