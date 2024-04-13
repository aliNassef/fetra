import 'package:fetra/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class VideoViewBody extends StatelessWidget {
  const VideoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.videoback,
              ),
            ),
          ),
        )
      ],
    );
  }
}
