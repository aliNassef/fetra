import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/shared/functions/locale.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({super.key, required this.title, this.items});
  final String title;
  final List<DropdownMenuItem<String>>? items;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment:
            isArabic() ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: AppStyles.titleAuth,
          ),
          SizedBox(
            height: 10.h,
          ),
          DropdownButtonFormField2<String>(
            isExpanded: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.textFieldFillColor,
              // Add Horizontal padding using menuItemStyleData.padding so it matchess
              // the menu padding when button's width is not specified.
              contentPadding: const EdgeInsets.symmetric(vertical: 16),
              border: buildBorderDropDown(),
              enabledBorder: buildBorderDropDown(),
              focusedBorder: buildBorderDropDown(),

              // Add more decoration..
            ),
            hint: Text(
              title,
              style: AppStyles.titleAuth,
            ),
            items: items,
            validator: (value) {
              return null;
            },
            onChanged: (value) {},
            onSaved: (value) {},
            buttonStyleData: ButtonStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.textFieldFillColor,
              ),
              padding: EdgeInsets.only(right: 8.w),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.black45,
              ),
              iconSize: 24,
            ),
            dropdownStyleData: DropdownStyleData(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.textFieldFillColor,
                ),
              ),
            ),
            menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder buildBorderDropDown() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.textFieldFillColor,
      ),
    );
  }
}
