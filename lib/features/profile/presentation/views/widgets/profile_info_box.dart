import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';

class ProfileInfoBox extends StatelessWidget {
  const ProfileInfoBox(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.textStyle14R.copyWith(
            color: const Color(0xff000000).withOpacity(0.9),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          height: 65.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: const Border.fromBorderSide(
              BorderSide(
                color: Color(0xFFD8DADC),
              ),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              Text(
                subTitle,
                style: AppStyles.textStyle14R.copyWith(
                  color: const Color(0xff515151),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
