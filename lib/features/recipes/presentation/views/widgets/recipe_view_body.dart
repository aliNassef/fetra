import 'package:fetra/features/recipes/data/models/recipe_model/recipe_model.dart';
import 'package:fetra/features/recipes/presentation/view_model/recipes/recipes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../localization/l10n.dart';
import 'recipes_grid_view.dart';

class RecipesViewBody extends StatefulWidget {
  const RecipesViewBody({super.key});

  @override
  State<RecipesViewBody> createState() => _RecipesViewBodyState();
}

class _RecipesViewBodyState extends State<RecipesViewBody> {
  @override
  void initState() {
    super.initState();

    context.read<RecipesCubit>().getRecipes();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 37.h,
            ),
            Text(
              S.of(context).recipes_title,
              style: AppStyles.textStyle15SB,
            ),
            SizedBox(
              height: 45.h,
            ),
            BlocBuilder<RecipesCubit, RecipesState>(
              builder: (context, state) {
                if (state is RecipeDataLoaded) {
                  return RecipesGridView(
                    instane: state.model,
                  );
                } else {
                  return const Card();
                }
              },
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
