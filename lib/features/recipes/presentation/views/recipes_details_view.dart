import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/core/shared/widgets/skelton.dart';
import 'package:fetra/features/recipes/presentation/view_model/recipe_details_cubit/recipe_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'widgets/recipes_detailss_view_body.dart';

class RecipesDetailsView extends StatefulWidget {
  const RecipesDetailsView({super.key, required this.id, required this.title});
  final String id;
  final String title;
  @override
  State<RecipesDetailsView> createState() => _RecipesDetailsViewState();
}

class _RecipesDetailsViewState extends State<RecipesDetailsView> {
  @override
  void initState() {
    super.initState();
    context.read<RecipeDetailsCubit>().getSpecificRecipe(
          widget.id,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: widget.title),
      body: BlocBuilder<RecipeDetailsCubit, RecipeDetailsState>(
        builder: (context, state) {
          if (state is RecipeDetailsSuccess) {
            return RecipesDetailsViewBody(
              components: state.model.data!.components!,
              recipe: state.model.data!.recipe!,
            );
          } else if (state is RecipeDetailsFailure) {
            return Text(state.errMesage);
          } else {
            return Center(
              child: SpinKitFadingCircle(
                itemBuilder: (BuildContext context, int index) {
                  return const DecoratedBox(
                    decoration: BoxDecoration(color: Color(0xffC4C4C4)),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
