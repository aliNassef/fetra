import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_images.dart';

class VideoBanner extends StatelessWidget {
  const VideoBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.sizeOf(context).height * .2,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.videoBanner),
        ),
      ),
      child: CircleAvatar(
        backgroundColor: const Color(0xff84C245),
        child: Center(
          child: SvgPicture.asset(
            AppImages.arrowRight,
          ),
        ),
      ),
    );
  }
}
