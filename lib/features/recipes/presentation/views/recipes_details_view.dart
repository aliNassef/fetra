import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/recipes_detailss_view_body.dart';

class RecipesDetailsView extends StatelessWidget {
  const RecipesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: 'ali'),
      body: RecipesDetailsViewBody(),
    );
  }
}
