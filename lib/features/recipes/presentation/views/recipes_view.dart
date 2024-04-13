import 'package:fetra/core/api/service_locator.dart';
import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/features/recipes/data/repo/recipe_repo_impl.dart';
import 'package:fetra/features/recipes/presentation/view_model/recipes/recipes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../localization/l10n.dart';
import 'widgets/recipe_view_body.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).recipes),
      body: BlocProvider(
        create: (context) => RecipesCubit(
          getIt.get<RecipeRepoImpl>(),
        ),
        child: const RecipesViewBody(),
      ),
    );
  }
}
