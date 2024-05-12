import 'dart:developer';
import 'package:fetra/core/shared/functions/locale.dart';
import 'package:fetra/core/shared/widgets/app_button.dart';
import 'package:fetra/core/utils/app_colors.dart';
import 'package:fetra/core/utils/app_styles.dart';
import 'package:fetra/features/meals/presentation/view_model/get_meal_cubit/get_meal_cubit.dart';
import 'package:fetra/features/meals/presentation/view_model/meal_cubit/meal_cubit.dart';
import 'package:fetra/features/meals/presentation/views/diet_program_view.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'meal_item.dart';

class DesignMealViewBody extends StatefulWidget {
  const DesignMealViewBody({super.key, required this.numOfMeals});
  final TextEditingController numOfMeals;
  @override
  State<DesignMealViewBody> createState() => _DesignMealViewBodyState();
}

class _DesignMealViewBodyState extends State<DesignMealViewBody> {
  @override
  void initState() {
    super.initState();
    log(widget.numOfMeals.text);
    context.read<GetMealCubit>().getMeal(
          numberOfMeals: widget.numOfMeals.text,
        );
    context.read<MealCubit>().currentPage = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: BlocBuilder<MealCubit, MealState>(
          builder: (context, state) {
            return BlocBuilder<GetMealCubit, GetMealState>(
              builder: (context, state) {
                if (state is GetMealSuccess) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 38.h,
                      ),
                      Text(
                        '${S.of(context).number_meals} : ${widget.numOfMeals.text}',
                        style: AppStyles.textStyle15SB.copyWith(
                          color: const Color(0xff303030),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        '  الوجبة : ${context.read<MealCubit>().currentPage}',
                        style: AppStyles.textStyle13M.copyWith(
                          color: const Color(0xff666666),
                        ),
                      ),
                      SizedBox(
                        height: 19.h,
                      ),
                      Expanded(
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return MealItem(
                              meal: context.read<MealCubit>().currentPage == 1
                                  ? state.model.data!.meal1![index]
                                  : context.read<MealCubit>().currentPage == 2
                                      ? state.model.data!.meal2![index]
                                      : state.model.data!.meal3![index],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 12.h,
                            );
                          },
                          itemCount: context.read<MealCubit>().currentPage == 1
                              ? state.model.data!.meal1!.length
                              : context.read<MealCubit>().currentPage == 2
                                  ? state.model.data!.meal2!.length
                                  : state.model.data!.meal3!.length,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      context.read<MealCubit>().currentPage ==
                              int.parse(widget.numOfMeals.text)
                          ? AppButton(
                              onPressed: () {
                                PersistentNavBarNavigator.pushNewScreen(
                                  context,
                                  screen: const DietProgramView(),
                                );
                              },
                              margin: EdgeInsets.zero,
                              radius: 10,
                              backgroundColor: AppColors.primarySwatchColor,
                              text: Text(
                                S.of(context).next,
                                style: AppStyles.textStyle10SB.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : Row(
                              children: [
                                Expanded(
                                  child: AppButton(
                                    onPressed: () {
                                      context.read<MealCubit>().goToNextPage(
                                            int.parse(
                                              widget.numOfMeals.text,
                                            ),
                                          );
                                    },
                                    margin: EdgeInsets.zero,
                                    radius: 10,
                                    backgroundColor:
                                        AppColors.primarySwatchColor,
                                    text: Text(
                                      S.of(context).next,
                                      style: AppStyles.textStyle10SB.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                Expanded(
                                  child: AppButton(
                                    onPressed: () {
                                      context.read<MealCubit>().currentPage == 1
                                          ? Navigator.pop(context)
                                          : context
                                              .read<MealCubit>()
                                              .backToPerviouspage();
                                      log(context
                                          .read<MealCubit>()
                                          .currentPage
                                          .toString());
                                    },
                                    margin: EdgeInsets.zero,
                                    radius: 10,
                                    borderColor: AppColors.primarySwatchColor,
                                    backgroundColor: Colors.white,
                                    text: Text(
                                      S.of(context).pervious,
                                      style: AppStyles.textStyle10SB.copyWith(
                                        color: const Color(0xff212132),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      SizedBox(
                        height: 30.h,
                      ),
                    ],
                  );
                } else {
                  return const CircularProgressIndicator();
                }
              },
            );
          },
        ),
      ),
    );
  }
}
