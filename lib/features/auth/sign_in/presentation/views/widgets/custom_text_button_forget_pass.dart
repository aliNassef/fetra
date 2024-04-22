import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/shared/functions/locale.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../generated/l10n.dart';
 
class CustomTextButtonForgetPass extends StatelessWidget {
  const CustomTextButtonForgetPass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      child: Column(
        children: [
          Align(
            alignment:
                isArabic() ? Alignment.centerLeft : Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              child: Text(
                S.of(context).forgetpass,
                style: AppStyles.forgetPassStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
