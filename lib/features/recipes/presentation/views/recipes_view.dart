import '../../../../core/api/service_locator.dart';
import '../../../../core/shared/widgets/custom_app_bar.dart';
import '../../data/repo/recipe_repo_impl.dart';
import '../view_model/recipe_details_cubit/recipe_details_cubit.dart';
import '../view_model/recipes/recipes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import '../../../../generated/l10n.dart';
import 'widgets/recipe_view_body.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).recipes),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => RecipesCubit(
              getIt.get<RecipeRepoImpl>(),
            ),
          ),
          BlocProvider(
            create: (context) => RecipeDetailsCubit(
              getIt.get<RecipeRepoImpl>(),
            ),
          ),
        ],
        child: const RecipesViewBody(),
      ),
    );
  }
}
