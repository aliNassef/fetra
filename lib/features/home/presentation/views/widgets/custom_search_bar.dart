
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: SizedBox(
        height: 36.h,
        width: MediaQuery.of(context).size.width * 3 / 4,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: SvgPicture.asset(
                AppImages.search,
              ),
            ),
            hintStyle: AppStyles.searchText,
            contentPadding: EdgeInsets.only(top: 7.h, bottom: 7.h),
            hintTextDirection:
                isArabic() ? TextDirection.rtl : TextDirection.rtl,
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            border: buildSearchBorder(),
            enabledBorder: buildSearchBorder(),
            focusedBorder: buildSearchBorder(),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildSearchBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
