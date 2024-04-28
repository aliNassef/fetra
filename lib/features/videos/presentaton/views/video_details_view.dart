import '../../../../core/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'widgets/video_details_view_body.dart';


class VideoDetailsView extends StatelessWidget {
  const VideoDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: 'مقاطع فيديو'),
      body: VideoDetailsViewBody(),
    );
  }
}
