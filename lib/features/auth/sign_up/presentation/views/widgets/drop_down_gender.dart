import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/shared/functions/locale.dart';
 import '../../../../../../generated/l10n.dart';
import '../../view_model/cubit/sign_up_cubit.dart';

class DropDownGender extends StatelessWidget {
  const DropDownGender({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment:
            isArabic() ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Text(
            S.of(context).type,
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
              border: buildBorderDropDownGender(),
              enabledBorder: buildBorderDropDownGender(),
              focusedBorder: buildBorderDropDownGender(),

              // Add more decoration..
            ),
            hint: Text(
              S.of(context).type,
              style: AppStyles.titleAuth,
            ),
            items: [
              DropdownMenuItem(
                value: S.of(context).male,
                child: Text(
                  S.of(context).male,
                  style: AppStyles.titleAuth,
                ),
              ),
              DropdownMenuItem(
                value: S.of(context).female,
                child: Text(
                  S.of(context).female,
                  style: AppStyles.titleAuth,
                ),
              ),
            ],
            validator: (value) {
              if (value == null) {
                return S.of(context).please_select_gender;
              }
              return null;
            },
            onChanged: (value) {
              if (value == 'ذكر') {
                context.read<SignUpCubit>().signUpGender.text = 'male';
              } else {
                context.read<SignUpCubit>().signUpGender.text = 'female';
              }
            },
            onSaved: (value) {
              context.read<SignUpCubit>().signUpGender.text = value!;
            },
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

  OutlineInputBorder buildBorderDropDownGender() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: AppColors.textFieldFillColor,
      ),
    );
  }
}
