import 'package:flutter/material.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_styles.dart';

class FatCalcInfo extends StatelessWidget {
  const FatCalcInfo({
    super.key,
    required this.text,
    required this.val,
  });
  final String text;
  final String val;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppStyles.textStyle12M,
          ),
          Text(
            val,
            style: AppStyles.textStyle12M,
          )
        ],
      ),
    );
  }
}
