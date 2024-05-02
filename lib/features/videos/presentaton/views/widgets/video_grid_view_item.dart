import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/video_model.dart';
import 'video_item.dart';

class VideoGridViewItem extends StatelessWidget {
  const VideoGridViewItem({
    super.key,
    required this.data,
  });
  final Data data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VideoItem(
          img: data.img!,
        ),
        SizedBox(
          height: 6.5.h,
        ),
        Text(
          data.name!,
          style: AppStyles.textStyle10SB,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
