import 'package:fetra/core/shared/functions/locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'video_grid_view.dart';

class VideoViewBody extends StatelessWidget {
  const VideoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      child: const Column(
        children: [
          VideoGridView(),
        ],
      ),
    );
  }
}
