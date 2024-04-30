import 'package:fetra/features/videos/presentaton/view_model/get_all_video_category_cubit/get_all_video_categories_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/shared/functions/locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_tab_bar.dart';
import 'video_grid_view.dart';

class VideoViewBody extends StatefulWidget {
  const VideoViewBody({super.key});

  @override
  State<VideoViewBody> createState() => _VideoViewBodyState();
}

class _VideoViewBodyState extends State<VideoViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<GetAllVideoCategoriesCubit>().getAllCateory();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: Column(
        children: [
          SizedBox(
            height: 21.h,
          ),
          BlocBuilder<GetAllVideoCategoriesCubit, GetAllVideoCategoriesState>(
            builder: (context, state) {
              if (state is GetAllVideoCategoriesSuccess) {
                return CutomTabBar(
                  instance: state.videoCategoriesModel,
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          SizedBox(
            height: 42.h,
          ),
          const VideoGridView(),
        ],
      ),
    );
  }
}
