import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import '../../../../localization/l10n.dart';
import 'widgets/recipe_view_body.dart';

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
