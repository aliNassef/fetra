import '../../../../../core/shared/functions/locale.dart';
 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_tab_bar.dart';
import 'video_grid_view.dart';

class VideoViewBody extends StatelessWidget {
  const VideoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: Column(
        children: [
          SizedBox(
            height: 21.h,
          ),
          const CutomTabBar(),
          SizedBox(
            height: 42.h,
          ),
          const VideoGridView(),
        ],
      ),
    );
  }
}
