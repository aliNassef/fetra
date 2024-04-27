import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
 import 'package:fetra/features/videos/presentaton/views/widgets/video_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../generated/l10n.dart';
import '../view_model/cubit/change_tab_bar_item_cubit.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).videos),
      body: BlocProvider(
        create: (context) => ChangeTabBarItemCubit(),
        child: const VideoViewBody(),
      ),
    );
  }
}
