 import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/features/meals/presentation/view_model/meal_cubit/meal_cubit.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/meal_view_body.dart';

class MealView extends StatelessWidget {
  const MealView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).number_meals),
      body: BlocProvider(
        create: (context) => MealCubit(),
        child: const MealViewBody(),
      ),
    );
  }
}
