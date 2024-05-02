  import 'package:fetra/features/videos/presentaton/view_model/get_all_video_category_cubit/get_all_video_categories_cubit.dart';
import 'package:fetra/features/videos/presentaton/view_model/get_video_by_id_cubit/get_video_by_id_cubit.dart';
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
          BlocConsumer<GetAllVideoCategoriesCubit, GetAllVideoCategoriesState>(
            listener: (context, state) {
              if (state is GetAllVideoCategoriesSuccess) {
                context.read<GetVideoByIdCubit>().getVideoById(
                      type: state.videoCategoriesModel.data![0].name.toString(),
                    );
              }
            },
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
          BlocBuilder<GetAllVideoCategoriesCubit, GetAllVideoCategoriesState>(
            builder: (context, state) {
              if (state is GetAllVideoCategoriesSuccess) {
                return BlocBuilder<GetVideoByIdCubit, GetVideoByIdState>(
                  builder: (context, state) {
                    if (state is GetVideoByIdSuccess) {
                      return VideoGridView(
                        instance: state.videoModel,
                      );
                    } else if (state is GetVideoByIdFailure) {
                      return Center(child: Text(state.errMessage));
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ],
      ),
    );
  }
}
