import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).recipes),
      body: const RecipesViewBody(),
    );
  }
}

class RecipesViewBody extends StatelessWidget {
  const RecipesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'وصفات لأطباق السلطة:',
          style: AppStyles.textStyle15SB,
        ),
      ],
    );
  }
}
