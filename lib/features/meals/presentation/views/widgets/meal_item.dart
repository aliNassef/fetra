import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      height: 78.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0c000000),
            blurRadius: 8,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'لحم بقري',
                style: AppStyles.textStyle12R.copyWith(
                  color: const Color(0xff181818),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'الوزن : 50 كجم',
                style: AppStyles.textStyle11R.copyWith(
                  color: AppColors.primarySwatchColor,
                ),
              )
            ],
          ),
          const Spacer(),
          Row(
            children: [
              const Icon(
                Icons.add_circle,
                color: AppColors.primarySwatchColor,
                size: 25,
              ),
              SizedBox(
                width: 21.w,
              ),
              Text(
                '2',
                style: AppStyles.textStyle18SB.copyWith(
                  color: const Color(0xff06161C),
                ),
              ),
              SizedBox(
                width: 21.w,
              ),
              const CircleAvatar(
                backgroundColor: Color(0xffF3F5F7),
                radius: 12.5,
                child: Center(
                  child: Icon(
                    Icons.remove,
                    color: Color(0xff979899),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
