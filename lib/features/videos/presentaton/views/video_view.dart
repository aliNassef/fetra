import 'package:fetra/core/api/service_locator.dart';
import 'package:fetra/features/videos/data/repo/video_repo_impl.dart';
import 'package:fetra/features/videos/presentaton/view_model/get_all_video_category_cubit/get_all_video_categories_cubit.dart';
import 'package:fetra/features/videos/presentaton/view_model/get_video_by_id_cubit/get_video_by_id_cubit.dart';

import '../../../../core/shared/widgets/custom_app_bar.dart';
import 'widgets/video_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../view_model/change_tab_cubit/change_tab_bar_item_cubit.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).videos),
      body: BlocProvider(
        create: (context) => ChangeTabBarItemCubit(),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => GetAllVideoCategoriesCubit(
                getIt.get<VideoRepoImpl>(),
              ),
            ),
            BlocProvider(
              create: (context) => GetVideoByIdCubit(
                getIt.get<VideoRepoImpl>(),
              ),
            )
          ],
          child: const VideoViewBody(),
        ),
      ),
    );
  }
}
