import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import 'video_item.dart';

class VideoGridViewItem extends StatelessWidget {
  const VideoGridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VideoItem(),
        SizedBox(
          height: 6.5.h,
        ),
        Text(
          'هل الاكل الصحي مفيد؟\n ولماذا؟',
          style: AppStyles.textStyle10SB,
        ),
      ],
    );
  }
}
