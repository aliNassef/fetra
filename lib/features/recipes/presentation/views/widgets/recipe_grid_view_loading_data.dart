import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared/widgets/skelton.dart';

class RecipeGridViewLoadingData extends StatelessWidget {
  const RecipeGridViewLoadingData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 22.w,
          mainAxisSpacing: 24.h,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Skelton(
            height: 145.h,
            width: 134.w,
          );
        },
      ),
    );
  }
}
