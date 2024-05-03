import '../view_model/get_video_details_cubit/get_video_details_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'widgets/video_details_view_body.dart';

class VideoDetailsView extends StatefulWidget {
  const VideoDetailsView({super.key, required this.id});
  final String id;
  @override
  State<VideoDetailsView> createState() => _VideoDetailsViewState();
}

class _VideoDetailsViewState extends State<VideoDetailsView> {
  @override
  void initState() {
    super.initState();
    context.read<GetVideoDetailsCubit>().getVideoDetails(id: widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: 'مقاطع فيديو'),
      body: VideoDetailsViewBody(),
    );
  }
}
