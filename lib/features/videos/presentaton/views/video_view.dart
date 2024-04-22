import 'package:fetra/core/shared/widgets/custom_app_bar.dart';
import 'package:fetra/features/videos/presentaton/views/widgets/video_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

 
class VideoView extends StatelessWidget {
  const VideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: S.of(context).videos),
      body: const VideoViewBody(),
    );
  }
}
