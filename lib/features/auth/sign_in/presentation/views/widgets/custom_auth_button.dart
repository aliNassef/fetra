import 'package:fetra/core/shared/functions/locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/shared/widgets/custom_text_form_field.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class CustomAuthButton extends StatefulWidget {
  const CustomAuthButton({
    super.key,
    required this.title,
    this.isSecure = false,
    required this.controller,
  });
  final String title;
  final bool isSecure;
  final TextEditingController controller;
  @override
  State<CustomAuthButton> createState() => _CustomAuthButtonState();
}

class _CustomAuthButtonState extends State<CustomAuthButton> {
  bool isHide = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment:
            isArabic() ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Text(
            widget.title,
            style: AppStyles.titleAuth,
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomTextFormField(
            obescureText: isHide,
            suffixIcon: widget.isSecure
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isHide = !isHide;
                      });
                    },
                    child: const Icon(
                      Icons.visibility_off,
                      color: AppColors.gray4,
                    ),
                  )
                : null,
            input: widget.controller,
            fillColor: true,
            borderRadius: 10,
            backgroundColor: AppColors.textFieldFillColor,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 20.h,
            ),
          ),
        ],
      ),
    );
  }
}
