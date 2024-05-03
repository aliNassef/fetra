import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/functions/locale.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../generated/l10n.dart';
import '../../view_model/recipes/recipes_cubit.dart';
import 'recipe_grid_view_loading_data.dart';
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
                } else if (state is RecipeDataFailure) {
                  return Text(state.errMessage);
                } else {
                  return const RecipeGridViewLoadingData();
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
