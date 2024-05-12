import 'package:fetra/core/api/service_locator.dart';
import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/features/meals/data/repo/meal_repo_impl.dart';
import 'package:fetra/features/meals/presentation/view_model/get_meal_cubit/get_meal_cubit.dart';
import 'package:fetra/features/meals/presentation/view_model/meal_cubit/meal_cubit.dart';
import 'package:fetra/features/meals/presentation/views/widgets/desigm_meal_view_body.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesignMealView extends StatelessWidget {
  const DesignMealView({super.key, required this.numOfMeals});
  final TextEditingController numOfMeals;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).design_meals,
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GetMealCubit(getIt.get<MealRepoImpl>()),
          ),
          BlocProvider(
            create: (context) => MealCubit(),
          ),
        ],
        child: DesignMealViewBody(
          numOfMeals: numOfMeals,
        ),
      ),
    );
  }
}
