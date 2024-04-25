import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';

class MeasureBoxInfo extends StatelessWidget {
  const MeasureBoxInfo({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.onTap,
  });
  final String text;
  final Color backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(18),
        ),
        height: 54.h,
        child: Text(
          text,
          style: AppStyles.textStyle18M,
        ),
      ),
    );
  }
}
