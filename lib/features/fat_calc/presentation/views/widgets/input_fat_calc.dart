import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/shared/widgets/custom_text_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class InputFatBox extends StatelessWidget {
  const InputFatBox({
    super.key,
    required this.controller,
    required this.hint,
  });

  final TextEditingController controller;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 80.w,
      child: Directionality(
        textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
        child: CustomTextFormField(
          fillColor: true,
          keyboardType: TextInputType.number,
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 9.h),
          hint: hint,
          
          hintStyle: AppStyles.textStyle9R,
          input: controller,
          backgroundColor: const Color(0xffFAFAFA),
          borderColor: AppColors.primarySwatchColor,
          borderRadius: 8,
        ),
      ),
    );
  }
}
// 4 text form field 