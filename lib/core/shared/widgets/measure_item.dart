

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_styles.dart';

class MeasureItem extends StatelessWidget {
  const MeasureItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            onTap: () {},
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
    );
  }
}
