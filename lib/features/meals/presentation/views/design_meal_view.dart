import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/features/meals/presentation/views/widgets/desigm_meal_view_body.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';

class DesignMealView extends StatelessWidget {
  const DesignMealView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).design_meals,
      ),
      body: const DesignMealViewBody(),
    );
  }
}
