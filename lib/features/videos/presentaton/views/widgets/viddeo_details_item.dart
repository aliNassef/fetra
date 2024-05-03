import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../data/models/video_details_model.dart';

class VideoDetailsItem extends StatelessWidget {
  const VideoDetailsItem({
    super.key,
    required this.details,
  });
  final Videos details;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF6F7FA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              details.img!,
              width: 67.w,
              height: 67.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  details.name!,
                  style: AppStyles.textStyle14SB.copyWith(
                    color: const Color(0xff303030),
                  ),
                ),
                Text(
                  details.desc!,
                  style: AppStyles.textStyle14R.copyWith(
                    color: const Color(0xff8C8C8C),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
