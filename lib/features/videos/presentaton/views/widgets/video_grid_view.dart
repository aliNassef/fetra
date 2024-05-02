import 'package:fetra/core/api/service_locator.dart';
import 'package:fetra/features/videos/data/repo/video_repo_impl.dart';
import 'package:fetra/features/videos/presentaton/view_model/get_video_details_cubit/get_video_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../data/models/video_model.dart';
import '../video_details_view.dart';
import 'video_grid_view_item.dart';

class VideoGridView extends StatelessWidget {
  const VideoGridView({
    super.key,
    required this.instance,
  });
  final VideoModel instance;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: instance.data!.length,
            itemBuilder: (context, index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                delay: const Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: const Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  horizontalOffset: 30,
                  verticalOffset: 300.0,
                  child: FlipAnimation(
                    duration: const Duration(milliseconds: 3000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    flipAxis: FlipAxis.y,
                    child: GestureDetector(
                      onTap: () {
                        PersistentNavBarNavigator.pushNewScreen(
                          context,
                          screen: BlocProvider(
                            create: (context) => GetVideoDetailsCubit(
                                getIt.get<VideoRepoImpl>()),
                            child: VideoDetailsView(
                              id: instance.data![index].id.toString(),
                            ),
                          ),
                        );
                      },
                      child: VideoGridViewItem(
                        data: instance.data![index],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
