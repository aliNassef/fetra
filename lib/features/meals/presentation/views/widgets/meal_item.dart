import 'package:fetra/constants.dart';
import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/model/meal_model.dart';

class MealItem extends StatefulWidget {
  const MealItem({
    super.key,
    required this.meal,
    required this.model,
    required this.currentPage,
  });
  final Meal meal;
  final MealsModel model;
  final int currentPage;

  @override
  State<MealItem> createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      height: 78.h,
      width: MediaQuery.sizeOf(context).width,
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
                widget.meal.name!,
                style: AppStyles.textStyle12R.copyWith(
                  color: const Color(0xff181818),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'الوزن :${widget.meal.weight}',
                style: AppStyles.textStyle11R.copyWith(
                  color: AppColors.primarySwatchColor,
                ),
              )
            ],
          ),
          const Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (widget.currentPage == 1) {
                      if ((AppConstants.protinMeal1 + widget.meal.protein) <=
                              widget.model.data!.proteinMeal1 &&
                          (AppConstants.crabMeal1 + widget.meal.carb) <=
                              widget.model.data!.carbMeal1 &&
                          (AppConstants.fatMeal1 + widget.meal.fats) <=
                              widget.model.data!.fatMeal1) {
                        AppConstants.protinMeal1 += widget.meal.protein;
                        AppConstants.fatMeal1 += widget.meal.fats;
                        AppConstants.crabMeal1 += widget.meal.carb;
                        widget.meal.quantity++;
                      }
                    } else if (widget.currentPage == 2) {
                      if ((AppConstants.protinMeal2 + widget.meal.protein) <=
                              widget.model.data!.proteinMeal2 &&
                          (AppConstants.carbMeal2 + widget.meal.carb) <=
                              widget.model.data!.carbMeal2 &&
                          (AppConstants.fatMeal2 + widget.meal.fats) <=
                              widget.model.data!.fatMeal2) {
                        AppConstants.protinMeal2 += widget.meal.protein;
                        AppConstants.fatMeal2 += widget.meal.fats;
                        AppConstants.carbMeal2 += widget.meal.carb;
                        widget.meal.quantity++;
                      }
                    } else {
                      if ((AppConstants.protinMeal3 + widget.meal.protein) <=
                              widget.model.data!.proteinMeal3 &&
                          (AppConstants.carbMeal3 + widget.meal.carb) <=
                              widget.model.data!.carbMeal3 &&
                          (AppConstants.fatMeal3 + widget.meal.fats) <=
                              widget.model.data!.fatMeal3) {
                        AppConstants.protinMeal3 += widget.meal.protein;
                        AppConstants.fatMeal3 += widget.meal.fats;
                        AppConstants.carbMeal3 += widget.meal.carb;
                        widget.meal.quantity++;
                      }
                    }
                  });
                },
                child: const Icon(
                  Icons.add_circle,
                  color: AppColors.primarySwatchColor,
                  size: 25,
                ),
              ),
              SizedBox(
                width: 21.w,
              ),
              Text(
                '${widget.meal.quantity}',
                style: AppStyles.textStyle18SB.copyWith(
                  color: const Color(0xff06161C),
                ),
              ),
              SizedBox(
                width: 21.w,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    if (widget.meal.quantity > 0) {
                      if (widget.currentPage == 1) {
                        if ((AppConstants.protinMeal1 - widget.meal.protein) <=
                                widget.model.data!.proteinMeal1 &&
                            (AppConstants.crabMeal1 - widget.meal.carb) <=
                                widget.model.data!.carbMeal1 &&
                            (AppConstants.fatMeal1 - widget.meal.fats) <=
                                widget.model.data!.fatMeal1) {
                          AppConstants.protinMeal1 -= widget.meal.protein;
                          AppConstants.fatMeal1 -= widget.meal.fats;
                          AppConstants.crabMeal1 -= widget.meal.carb;
                          widget.meal.quantity--;
                        }
                      } else if (widget.currentPage == 2) {
                        if ((AppConstants.protinMeal2 - widget.meal.protein) <=
                                widget.model.data!.proteinMeal2 &&
                            (AppConstants.carbMeal2 - widget.meal.carb) <=
                                widget.model.data!.carbMeal2 &&
                            (AppConstants.fatMeal2 - widget.meal.fats) <=
                                widget.model.data!.fatMeal2) {
                          AppConstants.protinMeal2 -= widget.meal.protein;
                          AppConstants.fatMeal2 -= widget.meal.fats;
                          AppConstants.carbMeal2 -= widget.meal.carb;
                          widget.meal.quantity--;
                        }
                      } else {
                        if ((AppConstants.protinMeal3 - widget.meal.protein) <=
                                widget.model.data!.proteinMeal3 &&
                            (AppConstants.carbMeal3 - widget.meal.carb) <=
                                widget.model.data!.carbMeal3 &&
                            (AppConstants.fatMeal3 - widget.meal.fats) <=
                                widget.model.data!.fatMeal3) {
                          AppConstants.protinMeal3 -= widget.meal.protein;
                          AppConstants.fatMeal3 -= widget.meal.fats;
                          AppConstants.carbMeal3 -= widget.meal.carb;
                          widget.meal.quantity--;
                        }
                      }
                    }
                  });
                },
                child: const CircleAvatar(
                  backgroundColor: Color(0xffF3F5F7),
                  radius: 12.5,
                  child: Center(
                    child: Icon(
                      Icons.remove,
                      color: Color(0xff979899),
                    ),
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
